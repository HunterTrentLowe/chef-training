#
# Cookbook:: myhaproxy
# Recipe:: default
#
# Copyright:: 2024, The Authors, All Rights Reserved.
haproxy_install 'package'

haproxy_frontend 'http-in' do
  bind '*:80'
  default_backend 'server_backend'
end

haproxy_backend 'server_backend' do
  server [
    'ec2-54-243-3-116.compute-1.amazonaws.com 54.243.3.116:80 maxconn 32',
    'ec2-44-197-177-115.compute-1.amazonaws.com 44.197.177.115:80 maxconn 32',
  ]
end

haproxy_service 'haproxy' do
  action [ :enable, :start ]
end
