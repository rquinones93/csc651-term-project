#
# InSpec Profile:: configuration-tests
# Control:: apache
#
# Copyright:: 2019, The Authors, All Rights Reserved.

control 'apache' do
  impact 0.8
  desc '
    This test suite makes sure all resources created from configuration::apache exist
  '

  describe package('apache2') do 
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end

  describe file("/var/www/html/img") do
    it { should exist }
    it { should be_directory }
  end

  describe file("/var/www/html/img/about") do
    it { should exist }
    it { should be_directory }
  end

  describe file("/var/www/html/img/team") do
    it { should exist }
    it { should be_directory }
  end

  describe file("/var/www/html/index.html") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/header-bg.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/about/1.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/about/2.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/about/3.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/about/4.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/team/0.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/team/1.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/team/2.jpg") do
    it { should exist }
    it { should be_file }
  end

  describe file("/var/www/html/img/team/3.jpg") do
    it { should exist }
    it { should be_file }
  end
end