include_recipe 'apt'

node.set['platform'] = 'ubuntu'

apt_package "ant" do
  action :install
end

include_recipe 'php'
include_recipe 'jenkins::_master_package'
jenkins_command 'install-plugin checkstyle'
jenkins_command 'install-plugin cloverphp'
jenkins_command 'install-plugin crap4j'
jenkins_command 'install-plugin dry'
jenkins_command 'install-plugin htmlpublisher'
jenkins_command 'install-plugin jdepend'
jenkins_command 'install-plugin plot'
jenkins_command 'install-plugin pmd'
jenkins_command 'install-plugin violations'
jenkins_command 'install-plugin xunit'
jenkins_command 'safe-restart'

directory "/var/lib/jenkins/jobs/php-template" do
  owner 'jenkins'
  group 'jenkins'
  mode '0755'
  action :create
end

template "config.xml" do
  path "/var/lib/jenkins/jobs/php-template/config.xml"
  source "config.xml.erb"
  owner "jenkins"
  group "jenkins"
  mode '0755'
end

jenkins_command 'reload-configuration'