#
# Cookbook:: configuration
# Recipe:: groups
#
# Copyright:: 2019, The Authors, All Rights Reserved.

group '1234' do
    append true
    action :create
end

group 'administrators' do
    append true
    gid 001
    action :create
end

group 'stuff' do
    append true
    gid 002
    action :create
end

group 'student' do
    append true
    gid 003
    action :create
end

group 'sysadmin' do
  append true
  gid 004
  action :create
end

group 'lecturer' do
  append true
  gid 005
  action :create
end