#
# Cookbook:: configuration
# Recipe:: groups
#
# Copyright:: 2019, The Authors, All Rights Reserved.

group '1234' do
  action :create
end

group 'administrators' do
  action :create
end

group 'stuff' do
  action :create
end

group 'student' do
  action :create
end

group 'sysadmin' do
  action :create
end

group 'lecturer' do
  action :create
end