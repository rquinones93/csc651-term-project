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