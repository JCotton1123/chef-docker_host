#
# Cookbook Name:: docker_host
# Recipe:: firewall
#
# Copyright (C) 2016 Jesse Cotton
#
# All rights reserved - Do Not Redistribute
#

# setup firewall
include_recipe 'iptables::default'

iptables_rule '000_proto_icmp' do
  lines '-A INPUT -p icmp -m comment --comment "000 accept all icmp" -j ACCEPT'
end

iptables_rule '001_iface_lo' do
  lines '-A INPUT -i lo -m comment --comment "001 accept all to lo interface" -j ACCEPT'
end

iptables_rule '002_conn_related_established' do
  lines '-A INPUT -m comment --comment "002 accept related and established" -m state --state RELATED,ESTABLISHED -j ACCEPT'
end

iptables_rule '003_ssh_22' do
  lines '-A INPUT -p tcp -m multiport --ports 22 -m comment --comment "003 accept ssh from everywhere" -m state --state NEW -j ACCEPT'
end

iptables_rule '999_drop_all' do
  lines '-A INPUT -m comment --comment "999 drop all" -j DROP'
end
