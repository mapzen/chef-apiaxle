#
# Cookbook Name:: apiaxle
# Recipe:: user
#

# is someone tells us to run as root,
#   don't muck with the account
#
user_account node[:apiaxle][:user][:name] do
  manage_home   true
  create_group  true
  ssh_keygen    false
  home          node[:apiaxle][:user][:home]
  not_if        { node[:apiaxle][:user][:name] == 'root' }
end

user_ulimit node[:apiaxle][:user][:name] do
  filehandle_limit node[:apiaxle][:user][:filehandle_limit]
end
