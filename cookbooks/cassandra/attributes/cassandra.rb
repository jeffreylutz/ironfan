# The "cassandra" data bag "clusters" item defines keyspaces for the cluster named here:
set_unless[:cassandra][:cluster_name]                  = "Test"
set_unless[:cassandra][:keyspaces]                     = {}
# Directories
set_unless[:cassandra][:data_file_dirs]                = ["/data/db/cassandra"]
set_unless[:cassandra][:commit_log_dir]                = "/var/lib/cassandra/commitlog"
set_unless[:cassandra][:callout_location]              = "/var/lib/cassandra/callouts"
set_unless[:cassandra][:staging_file_dir]              = "/var/lib/cassandra/staging"
# Partitioning
set_unless[:cassandra][:auto_bootstrap]                = false
set_unless[:cassandra][:authenticator]                 = "org.apache.cassandra.auth.AllowAllAuthenticator"
set_unless[:cassandra][:partitioner]                   = "org.apache.cassandra.dht.RandomPartitioner"       # "org.apache.cassandra.dht.OrderPreservingPartitioner"
set_unless[:cassandra][:initial_token]                 = ""
set_unless[:cassandra][:seeds]                         = ["127.0.0.1"]
# Miscellaneous
set_unless[:cassandra][:rpc_timeout]                   = 5000
set_unless[:cassandra][:commit_log_rotation_threshold] = 128
set_unless[:cassandra][:jmx_port]                      = 8080
set_unless[:cassandra][:listen_addr]                   = "localhost"
set_unless[:cassandra][:storage_port]                  = 7000
set_unless[:cassandra][:thrift_addr]                   = "localhost"
set_unless[:cassandra][:thrift_port]                   = 9160
set_unless[:cassandra][:thrift_framed_transport]       = false
# Memory, Disk and Performance
set_unless[:cassandra][:disk_access_mode]              = "auto"
set_unless[:cassandra][:sliced_buffer_size]            = 64
set_unless[:cassandra][:flush_data_buffer_size]        = 32
set_unless[:cassandra][:flush_index_buffer_size]       = 8
set_unless[:cassandra][:column_index_size]             = 64
set_unless[:cassandra][:memtable_throughput]           = 64
set_unless[:cassandra][:binary_memtable_throughput]    = 256
set_unless[:cassandra][:memtable_ops]                  = 0.3
set_unless[:cassandra][:memtable_flush_after]          = 60
set_unless[:cassandra][:concurrent_reads]              = 8
set_unless[:cassandra][:concurrent_writes]             = 32
set_unless[:cassandra][:commit_log_sync]               = "periodic"
set_unless[:cassandra][:commit_log_sync_period]        = 10000
set_unless[:cassandra][:gc_grace]                      = 864000
# Install from release
set_unless[:cassandra][:install_url] = "http://ftp.wayne.edu/apache/cassandra/0.6.0/apache-cassandra-0.6.0-rc1-bin.tar.gz"
# if that fails use                 "http://archive.apache.org/dist/cassandra/0.6.0/apache-cassandra-0.6.0-rc1-bin.tar.gz"