#
# Cookbook:: reset
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Run List - These recipes run in order
include_recipe 'reset::os_spec_reset'
include_recipe 'reset::package_spec_reset'
include_recipe 'reset::sysctl_spec_reset'
include_recipe 'reset::groups'
include_recipe 'reset::directory'
include_recipe 'reset::files'
include_recipe 'reset::users'
