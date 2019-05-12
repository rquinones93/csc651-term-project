#
# InSpec Profile:: configuration-tests
# Control:: groups
#
# Copyright:: 2019, The Authors, All Rights Reserved.

control 'groups' do
  impact 0.8
  desc '
    This test suite makes sure all groups created from configuration::groups exist
  '

  describe groups.where { name == '1234' } do
    it { should exist }
  end

  describe groups.where { name == 'administrators' } do
    it { should exist }
  end

  describe groups.where { name == 'stuff' } do
    it { should exist }
  end

  describe groups.where { name == 'student' } do
    it { should exist }
  end

  describe groups.where { name == 'sysadmin' } do
    it { should exist }
  end

  describe groups.where { name == 'lecturer' } do
    it { should exist }
  end
end
