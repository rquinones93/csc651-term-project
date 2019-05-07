# encoding: utf-8
# copyright: 2018, The Authors

title 'Configuration Cookbook Tests'

describe package('apache2') do
  it { should be_installed }
end

describe file('/home/cheftest/testfile.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'CHECKING TO SEE!'}
end

describe file('/home/deven/testfile.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'CHECKING TO SEE!'}
end

describe file('/home/andrew/testfile.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'CHECKING TO SEE!'}
end

describe file('/home/robert/testfile.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'CHECKING TO SEE!'}
end

describe file('/home/dawit/testfile.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'CHECKING TO SEE!'}
end

describe file('/home/dawit/testTemplate.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'This is a test'}
end

describe file('/home/deven/testTemplate.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'This is a test'}
end

describe file('/home/robert/testTemplate.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'This is a test'}
end

describe file('/home/andrew/testTemplate.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'This is a test'}
end
# # you can also use plain tests
# describe file('/tmp') do
#   it { should be_directory }
# end

# # you add controls here
# control 'tmp-1.0' do                        # A unique ID for this control
#   impact 0.7                                # The criticality, if this control fails.
#   title 'Create /tmp directory'             # A human-readable title
#   desc 'An optional description...'
#   describe file('/tmp') do                  # The actual test
#     it { should be_directory }
#   end
# end

# check for the existance of user
describe user('dawit') do 
  it { should exist }
  its('uid') { should eq '1234'}
  its('home') { should eq '/home/dawit' }
  its('shell') { should eq '/bin/bash' }
end

describe user('deven') do 
  it { should exist }
  its('uid') { should eq '1236'}
  its('home') { should eq '/home/deven' }
  its('shell') { should eq '/bin/bash' }
end

describe user('robert') do 
  it { should exist }
  its('uid') { should eq '1235' }
  its('home') { should eq '/home/robert' }
  its('shell') { should eq '/bin/bash' }
end

describe user('andrew') do 
  it { should exist }
  its('uid') { should eq '1237' }
  its('home') { should eq '/home/andrew' }
  its('shell') { should eq '/bin/bash' }
end

# check for the existance of a group

describe group('administrators') do
  it { should exist }
  its('gid') { should eq 001 }
end

describe group('stuff') do
  it { should exist }
  its('gid') { should eq 002 }
end

describe group('student') do
  it { should exist }
  its('gid') { should eq 003 }
end

describe group('sysadmin') do
  it { should exist }
  its('gid') { should eq 004 }
end

describe group('lecturer') do
  it { should exist }
  its('gid') { should eq 005 }
end



# Test if the path is a directory

describe file('/home/dawit/testDirectory') do
  its('type') { should eq :directory }
  it { should be_directory }
end

describe file('/home/robert/testDirectory') do
  its('type') { should eq :directory }
  it { should be_directory }
end

describe file('/home/deven/testDirectory') do
  its('type') { should eq :directory }
  it { should be_directory }
end

describe file('/home/andrew/testDirectory') do
  its('type') { should eq :directory }
  it { should be_directory }
end


#
# Cookbook:: configuration
# Recipe:: user
#
# Recipe to comply with Dev-Sec's Linux Security Baseline InSpec Tests
# https://github.com/dev-sec/linux-baseline/blob/master/controls/os_spec.rb
# Set proper kernel parameters for heightened security
#
# Copyright:: 2019, The Authors, All Rights Reserved.

