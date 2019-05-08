#
# InSpec Profile:: configuration-tests
# Control:: users
#
# Copyright:: 2019, The Authors, All Rights Reserved.

control 'users' do
  impact 0.8
  desc '
    This test suite makes sure all users created from configuration::users exist
  '

  describe user ('dawit') do
    it { should exist }
    its('uid') { should eq 1234 }
    its('home') { should eq '/home/dawit'}
    its('shell') { should eq '/bin/bash'}
  end

  describe user ('robert') do
    it { should exist }
    its('uid') { should eq 1235 }
    its('home') { should eq '/home/robert'}
    its('shell') { should eq '/bin/bash'}
  end

  describe user ('deven') do
    it { should exist }
    its('uid') { should eq 1236 }
    its('home') { should eq '/home/deven'}
    its('shell') { should eq '/bin/bash'}
  end

  describe user ('andrew') do
    it { should exist }
    its('uid') { should eq 1237 }
    its('home') { should eq '/home/andrew'}
    its('shell') { should eq '/bin/bash'}
  end
end