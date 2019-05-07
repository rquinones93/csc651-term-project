#
# Cookbook:: configuration
# Recipe:: users
#
# Copyright:: 2019, The Authors, All Rights Reserved.


user 'dawit' do
  comment 'dawit account'
  uid '1234'
  home '/home/dawit'
  manage_home true
  shell '/bin/bash'
  password '$1$F39u4WzP$YxX14tSrJJNugChHrEb4B1'
  system true
  action :create
end


user 'robert' do
  comment 'robert account'
  uid '1235'
  home '/home/robert'
  manage_home true
  shell '/bin/bash'
  password '$1$F39u4WzP$YxX14tSrJJNugChHrEb4B1'
  system true
  action :create
end

user 'deven' do
  comment 'deven account'
  uid '1236'
  home '/home/deven'
  manage_home true
  shell '/bin/bash'
  password '$1$F39u4WzP$YxX14tSrJJNugChHrEb4B1'
  system true
  action :create
end

user 'andrew' do
  comment 'andrew account'
  uid '1237'
  home '/home/andrew'
  manage_home true
  shell '/bin/bash'
  password '$1$F39u4WzP$YxX14tSrJJNugChHrEb4B1'
  system true
  action :create
end

