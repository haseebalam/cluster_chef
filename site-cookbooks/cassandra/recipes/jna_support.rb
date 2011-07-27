#
# Enable JNA support for Cassandra
#

if node[:platform].downcase == "ubuntu"
  package "libjna-java"
else
  package "jna"
end

# Link into our cassandra directory
link "#{node[:cassandra][:cassandra_home]}/lib/jna.jar" do
  to "/usr/share/java/jna.jar"
  notifies :restart, resources(:service => "cassandra")
end
