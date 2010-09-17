package com.nearinfinity.blur.manager.hits;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import com.nearinfinity.blur.thrift.generated.Blur;
import com.nearinfinity.blur.thrift.generated.Hit;
import com.nearinfinity.blur.thrift.generated.Hits;
import com.nearinfinity.blur.thrift.generated.ScoreType;
import com.nearinfinity.blur.thrift.generated.Blur.Client;

public class HitsIterableBlurClient implements HitsIterable {
    
    private static final Log LOG = LogFactory.getLog(HitsIterableBlurClient.class);

    private Map<String, Long> shardInfo = new TreeMap<String, Long>();
    private Client client;
    private String table;
    private String query;
    private boolean superQueryOn;
    private ScoreType type;
    private String postSuperFilter;
    private String preSuperFilter;
    private long minimumNumberOfHits;
    private long maxQueryTime;
    private Hits hits;
    private int fetchCount = 100;
    private int batch = 0;
    private long totalHits;
    private String hostnamePort;
    private long skipTo;

    public HitsIterableBlurClient(Blur.Client client, String hostnamePort, String table, String query,
            boolean superQueryOn, ScoreType type, String postSuperFilter, String preSuperFilter, 
            long minimumNumberOfHits, long maxQueryTime) {
        this.client = client;
        this.hostnamePort = hostnamePort;
        this.table = table;
        this.query = query;
        this.superQueryOn = superQueryOn;
        this.type = type;
        this.postSuperFilter = postSuperFilter;
        this.preSuperFilter = preSuperFilter;
        this.minimumNumberOfHits = minimumNumberOfHits;
        this.maxQueryTime = maxQueryTime;
        performSearch();
    }

    private void performSearch() {
        try {
            long cursor = fetchCount * batch;
            hits = client.search(table, query, superQueryOn, type, postSuperFilter, preSuperFilter, cursor, fetchCount, minimumNumberOfHits, maxQueryTime);
            totalHits = hits.totalHits;
            shardInfo.putAll(hits.shardInfo);
            batch++;
        } catch (Exception e) {
            LOG.error("Error during for [" + query +
                    "] on node [" + hostnamePort + 
                    "]",e);
            throw new RuntimeException(e);
        }
    }

    @Override
    public Map<String, Long> getShardInfo() {
        return shardInfo;
    }

    @Override
    public long getTotalHits() {
        return totalHits;
    }

    @Override
    public void skipTo(long skipTo) {
        this.skipTo = skipTo;
    }

    @Override
    public Iterator<Hit> iterator() {
        SearchIterator iterator = new SearchIterator();
        long start = 0;
        while (iterator.hasNext() && start < skipTo) {
            iterator.next();
            start++;
        }
        return iterator;
    }
    
    public class SearchIterator implements Iterator<Hit> {
        
        private int position = 0;
        private int relposition = 0;

        @Override
        public boolean hasNext() {
            if (position < minimumNumberOfHits) {
                return true;
            }
            return false;
        }

        @Override
        public Hit next() {
            if (relposition >= hits.hits.size()) {
                performSearch();
                relposition = 0;
            }
            position++;
            return hits.hits.get(relposition++);
        }

        @Override
        public void remove() {
            
        }
    }
}