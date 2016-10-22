#
# Cookbook Name:: docker_host
# Recipe:: default
#
# Copyright (C) 2016 Jesse Cotton
#
# All rights reserved - Do Not Redistribute
#

# setup firewall
include_recipe 'docker_host::_firewall'

# setup docker
include_recipe 'docker_host::_docker'
