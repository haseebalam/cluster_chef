name        'cassandra_node'
description 'Part of a cassandra database'

run_list *%w[
  java
  runit
  boost
  thrift
  ntp
  cassandra
  cassandra::install_from_release
  cassandra::autoconf
  cassandra::server
  cassandra::jna_support
  cassandra::mx4j
  cassandra::iptables
  ]

# Attributes applied if the node doesn't have it set already.
default_attributes({
    :cassandra => {
      :auto_bootstrap    => true,
      :data_file_dirs    => ["/data/db/cassandra"],
    }
  })

