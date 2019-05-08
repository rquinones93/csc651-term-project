#
# InSpec Profile:: configuration-tests
# Control:: directory
#
# Copyright:: 2019, The Authors, All Rights Reserved.

control 'directory' do
  impact 0.8
  desc '
    This test suite makes sure all directories created from configuration::directory exist
  '
  describe file("/home/robert") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'robert' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/robert/testDirectory") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/robert/Documents") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/robert/Desktop") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/robert/Applications") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/robert/Downloads") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/deven") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'deven' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/deven/testDirectory") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/deven/Documents") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/deven/Desktop") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/deven/Applications") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/deven/Downloads") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/andrew") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'andrew' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/andrew/testDirectory") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/andrew/Documents") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/andrew/Desktop") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/andrew/Applications") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/andrew/Downloads") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/dawit") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'dawit' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/dawit/testDirectory") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/dawit/Documents") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/dawit/Desktop") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/dawit/Applications") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end

  describe file("/home/dawit/Downloads") do
    it { should exist }
    it { should be_directory }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
  end
end
