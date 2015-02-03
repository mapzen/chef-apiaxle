#
# Cookbook Name:: apiaxle
# Recipe:: default
#

%w(
  _config
  _redis
  api
  proxy
  web_admin
).each do |recipe|
  include_recipe "apiaxle::#{recipe}"
end
