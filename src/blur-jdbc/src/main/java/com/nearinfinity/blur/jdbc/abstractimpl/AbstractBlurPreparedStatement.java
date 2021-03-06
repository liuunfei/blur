package com.nearinfinity.blur.jdbc.abstractimpl;

import java.io.InputStream;
import java.io.Reader;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.math.BigDecimal;
import java.net.URL;
import java.sql.Array;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.NClob;
import java.sql.ParameterMetaData;
import java.sql.PreparedStatement;
import java.sql.Ref;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.RowId;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.SQLXML;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;

import com.nearinfinity.blur.jdbc.util.NotImplemented;

public class AbstractBlurPreparedStatement implements PreparedStatement {

  private PreparedStatement throwExceptionDelegate;

  public void addBatch() throws SQLException {
    throwExceptionDelegate.addBatch();
  }

  public void addBatch(String sql) throws SQLException {
    throwExceptionDelegate.addBatch(sql);
  }

  public void cancel() throws SQLException {
    throwExceptionDelegate.cancel();
  }

  public void clearBatch() throws SQLException {
    throwExceptionDelegate.clearBatch();
  }

  public void clearParameters() throws SQLException {
    throwExceptionDelegate.clearParameters();
  }

  public void clearWarnings() throws SQLException {
    throwExceptionDelegate.clearWarnings();
  }

  public void close() throws SQLException {
    throwExceptionDelegate.close();
  }

  public boolean execute() throws SQLException {
    return throwExceptionDelegate.execute();
  }

  public boolean execute(String sql, int autoGeneratedKeys) throws SQLException {
    return throwExceptionDelegate.execute(sql, autoGeneratedKeys);
  }

  public boolean execute(String sql, int[] columnIndexes) throws SQLException {
    return throwExceptionDelegate.execute(sql, columnIndexes);
  }

  public boolean execute(String sql, String[] columnNames) throws SQLException {
    return throwExceptionDelegate.execute(sql, columnNames);
  }

  public boolean execute(String sql) throws SQLException {
    return throwExceptionDelegate.execute(sql);
  }

  public int[] executeBatch() throws SQLException {
    return throwExceptionDelegate.executeBatch();
  }

  public ResultSet executeQuery() throws SQLException {
    return throwExceptionDelegate.executeQuery();
  }

  public ResultSet executeQuery(String sql) throws SQLException {
    return throwExceptionDelegate.executeQuery(sql);
  }

  public int executeUpdate() throws SQLException {
    return throwExceptionDelegate.executeUpdate();
  }

  public int executeUpdate(String sql, int autoGeneratedKeys) throws SQLException {
    return throwExceptionDelegate.executeUpdate(sql, autoGeneratedKeys);
  }

  public int executeUpdate(String sql, int[] columnIndexes) throws SQLException {
    return throwExceptionDelegate.executeUpdate(sql, columnIndexes);
  }

  public int executeUpdate(String sql, String[] columnNames) throws SQLException {
    return throwExceptionDelegate.executeUpdate(sql, columnNames);
  }

  public int executeUpdate(String sql) throws SQLException {
    return throwExceptionDelegate.executeUpdate(sql);
  }

  public Connection getConnection() throws SQLException {
    return throwExceptionDelegate.getConnection();
  }

  public int getFetchDirection() throws SQLException {
    return throwExceptionDelegate.getFetchDirection();
  }

  public int getFetchSize() throws SQLException {
    return throwExceptionDelegate.getFetchSize();
  }

  public ResultSet getGeneratedKeys() throws SQLException {
    return throwExceptionDelegate.getGeneratedKeys();
  }

  public int getMaxFieldSize() throws SQLException {
    return throwExceptionDelegate.getMaxFieldSize();
  }

  public int getMaxRows() throws SQLException {
    return throwExceptionDelegate.getMaxRows();
  }

  public ResultSetMetaData getMetaData() throws SQLException {
    return throwExceptionDelegate.getMetaData();
  }

  public boolean getMoreResults() throws SQLException {
    return throwExceptionDelegate.getMoreResults();
  }

  public boolean getMoreResults(int current) throws SQLException {
    return throwExceptionDelegate.getMoreResults(current);
  }

  public ParameterMetaData getParameterMetaData() throws SQLException {
    return throwExceptionDelegate.getParameterMetaData();
  }

  public int getQueryTimeout() throws SQLException {
    return throwExceptionDelegate.getQueryTimeout();
  }

  public ResultSet getResultSet() throws SQLException {
    return throwExceptionDelegate.getResultSet();
  }

  public int getResultSetConcurrency() throws SQLException {
    return throwExceptionDelegate.getResultSetConcurrency();
  }

  public int getResultSetHoldability() throws SQLException {
    return throwExceptionDelegate.getResultSetHoldability();
  }

  public int getResultSetType() throws SQLException {
    return throwExceptionDelegate.getResultSetType();
  }

  public int getUpdateCount() throws SQLException {
    return throwExceptionDelegate.getUpdateCount();
  }

  public SQLWarning getWarnings() throws SQLException {
    return throwExceptionDelegate.getWarnings();
  }

  public boolean isClosed() throws SQLException {
    return throwExceptionDelegate.isClosed();
  }

  public boolean isPoolable() throws SQLException {
    return throwExceptionDelegate.isPoolable();
  }

  public boolean isWrapperFor(Class<?> iface) throws SQLException {
    return throwExceptionDelegate.isWrapperFor(iface);
  }

  public void setArray(int parameterIndex, Array x) throws SQLException {
    throwExceptionDelegate.setArray(parameterIndex, x);
  }

  public void setAsciiStream(int parameterIndex, InputStream x, int length) throws SQLException {
    throwExceptionDelegate.setAsciiStream(parameterIndex, x, length);
  }

  public void setAsciiStream(int parameterIndex, InputStream x, long length) throws SQLException {
    throwExceptionDelegate.setAsciiStream(parameterIndex, x, length);
  }

  public void setAsciiStream(int parameterIndex, InputStream x) throws SQLException {
    throwExceptionDelegate.setAsciiStream(parameterIndex, x);
  }

  public void setBigDecimal(int parameterIndex, BigDecimal x) throws SQLException {
    throwExceptionDelegate.setBigDecimal(parameterIndex, x);
  }

  public void setBinaryStream(int parameterIndex, InputStream x, int length) throws SQLException {
    throwExceptionDelegate.setBinaryStream(parameterIndex, x, length);
  }

  public void setBinaryStream(int parameterIndex, InputStream x, long length) throws SQLException {
    throwExceptionDelegate.setBinaryStream(parameterIndex, x, length);
  }

  public void setBinaryStream(int parameterIndex, InputStream x) throws SQLException {
    throwExceptionDelegate.setBinaryStream(parameterIndex, x);
  }

  public void setBlob(int parameterIndex, Blob x) throws SQLException {
    throwExceptionDelegate.setBlob(parameterIndex, x);
  }

  public void setBlob(int parameterIndex, InputStream inputStream, long length) throws SQLException {
    throwExceptionDelegate.setBlob(parameterIndex, inputStream, length);
  }

  public void setBlob(int parameterIndex, InputStream inputStream) throws SQLException {
    throwExceptionDelegate.setBlob(parameterIndex, inputStream);
  }

  public void setBoolean(int parameterIndex, boolean x) throws SQLException {
    throwExceptionDelegate.setBoolean(parameterIndex, x);
  }

  public void setByte(int parameterIndex, byte x) throws SQLException {
    throwExceptionDelegate.setByte(parameterIndex, x);
  }

  public void setBytes(int parameterIndex, byte[] x) throws SQLException {
    throwExceptionDelegate.setBytes(parameterIndex, x);
  }

  public void setCharacterStream(int parameterIndex, Reader reader, int length) throws SQLException {
    throwExceptionDelegate.setCharacterStream(parameterIndex, reader, length);
  }

  public void setCharacterStream(int parameterIndex, Reader reader, long length) throws SQLException {
    throwExceptionDelegate.setCharacterStream(parameterIndex, reader, length);
  }

  public void setCharacterStream(int parameterIndex, Reader reader) throws SQLException {
    throwExceptionDelegate.setCharacterStream(parameterIndex, reader);
  }

  public void setClob(int parameterIndex, Clob x) throws SQLException {
    throwExceptionDelegate.setClob(parameterIndex, x);
  }

  public void setClob(int parameterIndex, Reader reader, long length) throws SQLException {
    throwExceptionDelegate.setClob(parameterIndex, reader, length);
  }

  public void setClob(int parameterIndex, Reader reader) throws SQLException {
    throwExceptionDelegate.setClob(parameterIndex, reader);
  }

  public void setCursorName(String name) throws SQLException {
    throwExceptionDelegate.setCursorName(name);
  }

  public void setDate(int parameterIndex, Date x, Calendar cal) throws SQLException {
    throwExceptionDelegate.setDate(parameterIndex, x, cal);
  }

  public void setDate(int parameterIndex, Date x) throws SQLException {
    throwExceptionDelegate.setDate(parameterIndex, x);
  }

  public void setDouble(int parameterIndex, double x) throws SQLException {
    throwExceptionDelegate.setDouble(parameterIndex, x);
  }

  public void setEscapeProcessing(boolean enable) throws SQLException {
    throwExceptionDelegate.setEscapeProcessing(enable);
  }

  public void setFetchDirection(int direction) throws SQLException {
    throwExceptionDelegate.setFetchDirection(direction);
  }

  public void setFetchSize(int rows) throws SQLException {
    throwExceptionDelegate.setFetchSize(rows);
  }

  public void setFloat(int parameterIndex, float x) throws SQLException {
    throwExceptionDelegate.setFloat(parameterIndex, x);
  }

  public void setInt(int parameterIndex, int x) throws SQLException {
    throwExceptionDelegate.setInt(parameterIndex, x);
  }

  public void setLong(int parameterIndex, long x) throws SQLException {
    throwExceptionDelegate.setLong(parameterIndex, x);
  }

  public void setMaxFieldSize(int max) throws SQLException {
    throwExceptionDelegate.setMaxFieldSize(max);
  }

  public void setMaxRows(int max) throws SQLException {
    throwExceptionDelegate.setMaxRows(max);
  }

  public void setNCharacterStream(int parameterIndex, Reader value, long length) throws SQLException {
    throwExceptionDelegate.setNCharacterStream(parameterIndex, value, length);
  }

  public void setNCharacterStream(int parameterIndex, Reader value) throws SQLException {
    throwExceptionDelegate.setNCharacterStream(parameterIndex, value);
  }

  public void setNClob(int parameterIndex, NClob value) throws SQLException {
    throwExceptionDelegate.setNClob(parameterIndex, value);
  }

  public void setNClob(int parameterIndex, Reader reader, long length) throws SQLException {
    throwExceptionDelegate.setNClob(parameterIndex, reader, length);
  }

  public void setNClob(int parameterIndex, Reader reader) throws SQLException {
    throwExceptionDelegate.setNClob(parameterIndex, reader);
  }

  public void setNString(int parameterIndex, String value) throws SQLException {
    throwExceptionDelegate.setNString(parameterIndex, value);
  }

  public void setNull(int parameterIndex, int sqlType, String typeName) throws SQLException {
    throwExceptionDelegate.setNull(parameterIndex, sqlType, typeName);
  }

  public void setNull(int parameterIndex, int sqlType) throws SQLException {
    throwExceptionDelegate.setNull(parameterIndex, sqlType);
  }

  public void setObject(int parameterIndex, Object x, int targetSqlType, int scaleOrLength) throws SQLException {
    throwExceptionDelegate.setObject(parameterIndex, x, targetSqlType, scaleOrLength);
  }

  public void setObject(int parameterIndex, Object x, int targetSqlType) throws SQLException {
    throwExceptionDelegate.setObject(parameterIndex, x, targetSqlType);
  }

  public void setObject(int parameterIndex, Object x) throws SQLException {
    throwExceptionDelegate.setObject(parameterIndex, x);
  }

  public void setPoolable(boolean poolable) throws SQLException {
    throwExceptionDelegate.setPoolable(poolable);
  }

  public void setQueryTimeout(int seconds) throws SQLException {
    throwExceptionDelegate.setQueryTimeout(seconds);
  }

  public void setRef(int parameterIndex, Ref x) throws SQLException {
    throwExceptionDelegate.setRef(parameterIndex, x);
  }

  public void setRowId(int parameterIndex, RowId x) throws SQLException {
    throwExceptionDelegate.setRowId(parameterIndex, x);
  }

  public void setSQLXML(int parameterIndex, SQLXML xmlObject) throws SQLException {
    throwExceptionDelegate.setSQLXML(parameterIndex, xmlObject);
  }

  public void setShort(int parameterIndex, short x) throws SQLException {
    throwExceptionDelegate.setShort(parameterIndex, x);
  }

  public void setString(int parameterIndex, String x) throws SQLException {
    throwExceptionDelegate.setString(parameterIndex, x);
  }

  public void setTime(int parameterIndex, Time x, Calendar cal) throws SQLException {
    throwExceptionDelegate.setTime(parameterIndex, x, cal);
  }

  public void setTime(int parameterIndex, Time x) throws SQLException {
    throwExceptionDelegate.setTime(parameterIndex, x);
  }

  public void setTimestamp(int parameterIndex, Timestamp x, Calendar cal) throws SQLException {
    throwExceptionDelegate.setTimestamp(parameterIndex, x, cal);
  }

  public void setTimestamp(int parameterIndex, Timestamp x) throws SQLException {
    throwExceptionDelegate.setTimestamp(parameterIndex, x);
  }

  public void setURL(int parameterIndex, URL x) throws SQLException {
    throwExceptionDelegate.setURL(parameterIndex, x);
  }

  public void setUnicodeStream(int parameterIndex, InputStream x, int length) throws SQLException {
    throwExceptionDelegate.setUnicodeStream(parameterIndex, x, length);
  }

  public <T> T unwrap(Class<T> iface) throws SQLException {
    return throwExceptionDelegate.unwrap(iface);
  }

  public AbstractBlurPreparedStatement() {
    throwExceptionDelegate = (PreparedStatement) Proxy.newProxyInstance(PreparedStatement.class.getClassLoader(), new Class[] { PreparedStatement.class }, new InvocationHandler() {
      @Override
      public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        throw new NotImplemented(method.getName());
      }
    });
  }
  
  

}
