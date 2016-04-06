
package 'apache2'

service 'apache2' do
  action :start
end

template '/etc/apache2/conf-enabled/serverlimit.conf' do
  user 'root'
  group 'root'
  mode '0644'
  notifies :restart, 'service[apache2]'
end

