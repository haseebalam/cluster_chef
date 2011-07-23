#
# Author:: Mike Heffner (<mike@librato.com>)
# Cookbook Name:: cassandra
# Recipe:: silverline
#
# Copyright 2011, Librato, Inc.
#
# XXX: This should go else where.

file "/etc/sv/cassandra/env/SL_NAME" do
  owner "root"
  group "root"
  mode "0644"
  content "cassandra"
  action :create
  notifies  :restart, resources(:service => "cassandra")
end

