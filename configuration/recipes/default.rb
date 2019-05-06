#
# Cookbook:: configuration
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.





# Run List - These recipes run in order
include_recipe 'configuration::os_spec'
include_recipe 'configuration::package_spec'
include_recipe 'configuration::sysctl_spec'
include_recipe 'configuration::groups'
include_recipe 'configuration::users'
include_recipe 'configuration::apache'

# Install Apache and Enable
apt_update 'Update the apt cache daily' do
  frequency 86_400
  action :periodic
end

package 'apache2'

service 'apache2' do
  supports status: true
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
