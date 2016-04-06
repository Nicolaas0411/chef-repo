
include_recipe 'common::packages'

directory '/root' do
  user 'root'
  group 'root'
  mode '0700'
end

cookbook_file 'etc/motd' do
  user 'root'
  group 'root'
  mode '0644'
end
