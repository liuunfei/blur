#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require 'blur_types'

    module Blur
      module Blur
        class Client
          include ::Thrift::Client

          def shardServerList()
            send_shardServerList()
            return recv_shardServerList()
          end

          def send_shardServerList()
            send_message('shardServerList', ShardServerList_args)
          end

          def recv_shardServerList()
            result = receive_message(ShardServerList_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'shardServerList failed: unknown result')
          end

          def controllerServerList()
            send_controllerServerList()
            return recv_controllerServerList()
          end

          def send_controllerServerList()
            send_message('controllerServerList', ControllerServerList_args)
          end

          def recv_controllerServerList()
            result = receive_message(ControllerServerList_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'controllerServerList failed: unknown result')
          end

          def shardServerLayout(table)
            send_shardServerLayout(table)
            return recv_shardServerLayout()
          end

          def send_shardServerLayout(table)
            send_message('shardServerLayout', ShardServerLayout_args, :table => table)
          end

          def recv_shardServerLayout()
            result = receive_message(ShardServerLayout_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'shardServerLayout failed: unknown result')
          end

          def tableList()
            send_tableList()
            return recv_tableList()
          end

          def send_tableList()
            send_message('tableList', TableList_args)
          end

          def recv_tableList()
            result = receive_message(TableList_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'tableList failed: unknown result')
          end

          def describe(table)
            send_describe(table)
            return recv_describe()
          end

          def send_describe(table)
            send_message('describe', Describe_args, :table => table)
          end

          def recv_describe()
            result = receive_message(Describe_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'describe failed: unknown result')
          end

          def query(table, blurQuery)
            send_query(table, blurQuery)
            return recv_query()
          end

          def send_query(table, blurQuery)
            send_message('query', Query_args, :table => table, :blurQuery => blurQuery)
          end

          def recv_query()
            result = receive_message(Query_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'query failed: unknown result')
          end

          def cancelQuery(table, uuid)
            send_cancelQuery(table, uuid)
            recv_cancelQuery()
          end

          def send_cancelQuery(table, uuid)
            send_message('cancelQuery', CancelQuery_args, :table => table, :uuid => uuid)
          end

          def recv_cancelQuery()
            result = receive_message(CancelQuery_result)
            raise result.ex unless result.ex.nil?
            return
          end

          def currentQueries(table)
            send_currentQueries(table)
            return recv_currentQueries()
          end

          def send_currentQueries(table)
            send_message('currentQueries', CurrentQueries_args, :table => table)
          end

          def recv_currentQueries()
            result = receive_message(CurrentQueries_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'currentQueries failed: unknown result')
          end

          def schema(table)
            send_schema(table)
            return recv_schema()
          end

          def send_schema(table)
            send_message('schema', Schema_args, :table => table)
          end

          def recv_schema()
            result = receive_message(Schema_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'schema failed: unknown result')
          end

          def getTableStats(table)
            send_getTableStats(table)
            return recv_getTableStats()
          end

          def send_getTableStats(table)
            send_message('getTableStats', GetTableStats_args, :table => table)
          end

          def recv_getTableStats()
            result = receive_message(GetTableStats_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'getTableStats failed: unknown result')
          end

          def terms(table, columnFamily, columnName, startWith, size)
            send_terms(table, columnFamily, columnName, startWith, size)
            return recv_terms()
          end

          def send_terms(table, columnFamily, columnName, startWith, size)
            send_message('terms', Terms_args, :table => table, :columnFamily => columnFamily, :columnName => columnName, :startWith => startWith, :size => size)
          end

          def recv_terms()
            result = receive_message(Terms_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'terms failed: unknown result')
          end

          def recordFrequency(table, columnFamily, columnName, value)
            send_recordFrequency(table, columnFamily, columnName, value)
            return recv_recordFrequency()
          end

          def send_recordFrequency(table, columnFamily, columnName, value)
            send_message('recordFrequency', RecordFrequency_args, :table => table, :columnFamily => columnFamily, :columnName => columnName, :value => value)
          end

          def recv_recordFrequency()
            result = receive_message(RecordFrequency_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'recordFrequency failed: unknown result')
          end

          def fetchRow(table, selector)
            send_fetchRow(table, selector)
            return recv_fetchRow()
          end

          def send_fetchRow(table, selector)
            send_message('fetchRow', FetchRow_args, :table => table, :selector => selector)
          end

          def recv_fetchRow()
            result = receive_message(FetchRow_result)
            return result.success unless result.success.nil?
            raise result.ex unless result.ex.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'fetchRow failed: unknown result')
          end

          def mutate(mutation)
            send_mutate(mutation)
            recv_mutate()
          end

          def send_mutate(mutation)
            send_message('mutate', Mutate_args, :mutation => mutation)
          end

          def recv_mutate()
            result = receive_message(Mutate_result)
            raise result.ex unless result.ex.nil?
            return
          end

          def createTable(table, tableDescriptor)
            send_createTable(table, tableDescriptor)
            recv_createTable()
          end

          def send_createTable(table, tableDescriptor)
            send_message('createTable', CreateTable_args, :table => table, :tableDescriptor => tableDescriptor)
          end

          def recv_createTable()
            result = receive_message(CreateTable_result)
            raise result.ex unless result.ex.nil?
            return
          end

          def enableTable(table)
            send_enableTable(table)
            recv_enableTable()
          end

          def send_enableTable(table)
            send_message('enableTable', EnableTable_args, :table => table)
          end

          def recv_enableTable()
            result = receive_message(EnableTable_result)
            raise result.ex unless result.ex.nil?
            return
          end

          def disableTable(table)
            send_disableTable(table)
            recv_disableTable()
          end

          def send_disableTable(table)
            send_message('disableTable', DisableTable_args, :table => table)
          end

          def recv_disableTable()
            result = receive_message(DisableTable_result)
            raise result.ex unless result.ex.nil?
            return
          end

          def removeTable(table, deleteIndexFiles)
            send_removeTable(table, deleteIndexFiles)
            recv_removeTable()
          end

          def send_removeTable(table, deleteIndexFiles)
            send_message('removeTable', RemoveTable_args, :table => table, :deleteIndexFiles => deleteIndexFiles)
          end

          def recv_removeTable()
            result = receive_message(RemoveTable_result)
            raise result.ex unless result.ex.nil?
            return
          end

        end

        class Processor
          include ::Thrift::Processor

          def process_shardServerList(seqid, iprot, oprot)
            args = read_args(iprot, ShardServerList_args)
            result = ShardServerList_result.new()
            begin
              result.success = @handler.shardServerList()
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'shardServerList', seqid)
          end

          def process_controllerServerList(seqid, iprot, oprot)
            args = read_args(iprot, ControllerServerList_args)
            result = ControllerServerList_result.new()
            begin
              result.success = @handler.controllerServerList()
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'controllerServerList', seqid)
          end

          def process_shardServerLayout(seqid, iprot, oprot)
            args = read_args(iprot, ShardServerLayout_args)
            result = ShardServerLayout_result.new()
            begin
              result.success = @handler.shardServerLayout(args.table)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'shardServerLayout', seqid)
          end

          def process_tableList(seqid, iprot, oprot)
            args = read_args(iprot, TableList_args)
            result = TableList_result.new()
            begin
              result.success = @handler.tableList()
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'tableList', seqid)
          end

          def process_describe(seqid, iprot, oprot)
            args = read_args(iprot, Describe_args)
            result = Describe_result.new()
            begin
              result.success = @handler.describe(args.table)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'describe', seqid)
          end

          def process_query(seqid, iprot, oprot)
            args = read_args(iprot, Query_args)
            result = Query_result.new()
            begin
              result.success = @handler.query(args.table, args.blurQuery)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'query', seqid)
          end

          def process_cancelQuery(seqid, iprot, oprot)
            args = read_args(iprot, CancelQuery_args)
            result = CancelQuery_result.new()
            begin
              @handler.cancelQuery(args.table, args.uuid)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'cancelQuery', seqid)
          end

          def process_currentQueries(seqid, iprot, oprot)
            args = read_args(iprot, CurrentQueries_args)
            result = CurrentQueries_result.new()
            begin
              result.success = @handler.currentQueries(args.table)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'currentQueries', seqid)
          end

          def process_schema(seqid, iprot, oprot)
            args = read_args(iprot, Schema_args)
            result = Schema_result.new()
            begin
              result.success = @handler.schema(args.table)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'schema', seqid)
          end

          def process_getTableStats(seqid, iprot, oprot)
            args = read_args(iprot, GetTableStats_args)
            result = GetTableStats_result.new()
            begin
              result.success = @handler.getTableStats(args.table)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'getTableStats', seqid)
          end

          def process_terms(seqid, iprot, oprot)
            args = read_args(iprot, Terms_args)
            result = Terms_result.new()
            begin
              result.success = @handler.terms(args.table, args.columnFamily, args.columnName, args.startWith, args.size)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'terms', seqid)
          end

          def process_recordFrequency(seqid, iprot, oprot)
            args = read_args(iprot, RecordFrequency_args)
            result = RecordFrequency_result.new()
            begin
              result.success = @handler.recordFrequency(args.table, args.columnFamily, args.columnName, args.value)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'recordFrequency', seqid)
          end

          def process_fetchRow(seqid, iprot, oprot)
            args = read_args(iprot, FetchRow_args)
            result = FetchRow_result.new()
            begin
              result.success = @handler.fetchRow(args.table, args.selector)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'fetchRow', seqid)
          end

          def process_mutate(seqid, iprot, oprot)
            args = read_args(iprot, Mutate_args)
            result = Mutate_result.new()
            begin
              @handler.mutate(args.mutation)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'mutate', seqid)
          end

          def process_createTable(seqid, iprot, oprot)
            args = read_args(iprot, CreateTable_args)
            result = CreateTable_result.new()
            begin
              @handler.createTable(args.table, args.tableDescriptor)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'createTable', seqid)
          end

          def process_enableTable(seqid, iprot, oprot)
            args = read_args(iprot, EnableTable_args)
            result = EnableTable_result.new()
            begin
              @handler.enableTable(args.table)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'enableTable', seqid)
          end

          def process_disableTable(seqid, iprot, oprot)
            args = read_args(iprot, DisableTable_args)
            result = DisableTable_result.new()
            begin
              @handler.disableTable(args.table)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'disableTable', seqid)
          end

          def process_removeTable(seqid, iprot, oprot)
            args = read_args(iprot, RemoveTable_args)
            result = RemoveTable_result.new()
            begin
              @handler.removeTable(args.table, args.deleteIndexFiles)
            rescue Blur::BlurException => ex
              result.ex = ex
            end
            write_result(result, oprot, 'removeTable', seqid)
          end

        end

        # HELPER FUNCTIONS AND STRUCTURES

        class ShardServerList_args
          include ::Thrift::Struct, ::Thrift::Struct_Union

          FIELDS = {

          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class ShardServerList_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class ControllerServerList_args
          include ::Thrift::Struct, ::Thrift::Struct_Union

          FIELDS = {

          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class ControllerServerList_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class ShardServerLayout_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class ShardServerLayout_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::MAP, :name => 'success', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class TableList_args
          include ::Thrift::Struct, ::Thrift::Struct_Union

          FIELDS = {

          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class TableList_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Describe_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Describe_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Blur::TableDescriptor},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Query_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1
          BLURQUERY = 2

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'},
            BLURQUERY => {:type => ::Thrift::Types::STRUCT, :name => 'blurQuery', :class => Blur::BlurQuery}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Query_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Blur::BlurResults},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class CancelQuery_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1
          UUID = 2

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'},
            UUID => {:type => ::Thrift::Types::I64, :name => 'uuid'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class CancelQuery_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          EX = 1

          FIELDS = {
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class CurrentQueries_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class CurrentQueries_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRUCT, :class => Blur::BlurQueryStatus}},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Schema_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Schema_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Blur::Schema},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class GetTableStats_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class GetTableStats_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Blur::TableStats},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Terms_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1
          COLUMNFAMILY = 2
          COLUMNNAME = 3
          STARTWITH = 4
          SIZE = 5

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'},
            COLUMNFAMILY => {:type => ::Thrift::Types::STRING, :name => 'columnFamily'},
            COLUMNNAME => {:type => ::Thrift::Types::STRING, :name => 'columnName'},
            STARTWITH => {:type => ::Thrift::Types::STRING, :name => 'startWith'},
            SIZE => {:type => ::Thrift::Types::I16, :name => 'size'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Terms_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::LIST, :name => 'success', :element => {:type => ::Thrift::Types::STRING}},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class RecordFrequency_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1
          COLUMNFAMILY = 2
          COLUMNNAME = 3
          VALUE = 4

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'},
            COLUMNFAMILY => {:type => ::Thrift::Types::STRING, :name => 'columnFamily'},
            COLUMNNAME => {:type => ::Thrift::Types::STRING, :name => 'columnName'},
            VALUE => {:type => ::Thrift::Types::STRING, :name => 'value'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class RecordFrequency_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::I64, :name => 'success'},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class FetchRow_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1
          SELECTOR = 2

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'},
            SELECTOR => {:type => ::Thrift::Types::STRUCT, :name => 'selector', :class => Blur::Selector}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class FetchRow_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          EX = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => Blur::FetchResult},
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Mutate_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          MUTATION = 1

          FIELDS = {
            MUTATION => {:type => ::Thrift::Types::STRUCT, :name => 'mutation', :class => Blur::RowMutation}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Mutate_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          EX = 1

          FIELDS = {
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class CreateTable_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1
          TABLEDESCRIPTOR = 2

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'},
            TABLEDESCRIPTOR => {:type => ::Thrift::Types::STRUCT, :name => 'tableDescriptor', :class => Blur::TableDescriptor}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class CreateTable_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          EX = 1

          FIELDS = {
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class EnableTable_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class EnableTable_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          EX = 1

          FIELDS = {
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class DisableTable_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class DisableTable_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          EX = 1

          FIELDS = {
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class RemoveTable_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          TABLE = 1
          DELETEINDEXFILES = 2

          FIELDS = {
            TABLE => {:type => ::Thrift::Types::STRING, :name => 'table'},
            DELETEINDEXFILES => {:type => ::Thrift::Types::BOOL, :name => 'deleteIndexFiles'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class RemoveTable_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          EX = 1

          FIELDS = {
            EX => {:type => ::Thrift::Types::STRUCT, :name => 'ex', :class => Blur::BlurException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

      end

    end
