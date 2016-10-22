#
# Cookbook Name:: docker_host
# Recipe:: docker
#
# Copyright (C) 2016 Jesse Cotton
#
# All rights reserved - Do Not Redistribute
#

# setup docker apt repo
include_recipe 'chef-apt-docker'

# setup docker
package "linux-image-extra-#{node['kernel']['release']}"

docker_installation_package 'default' do
  version node['docker_host']['docker']['version']
  action :create
end

docker_service 'default' do
  storage_driver 'aufs'
  action [:create, :start]
end
