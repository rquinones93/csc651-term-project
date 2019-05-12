#
# Cookbook:: reset
# Recipe:: apache
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package "apache2" do
  action :purge
end

file '/var/www/html/index.html' do
  action :delete
end

# Example for creating directories and importing file
file "/var/www/html/img/about/1.jpg" do
  action :delete
end

file "/var/www/html/img/about/2.jpg" do
  action :delete
end

file "/var/www/html/img/about/3.jpg" do
  action :delete
end

file "/var/www/html/img/about/4.jpg" do
  action :delete
end

file "/var/www/html/img/team/0.jpg" do
  action :delete
end

file "/var/www/html/img/team/1.jpg" do
  action :delete
end

file "/var/www/html/img/team/2.jpg" do
  action :delete
end

file "/var/www/html/img/team/3.jpg" do
  action :delete
end

directory "/var/www/html/img/about" do
  recursive true
  action :delete
end

directory "/var/www/html/img/team" do
  recursive true
  action :delete
end

directory "/var/www/html/img" do
  recursive true
  action :delete
end

directory "/var/www/html/css" do
  recursive true
  action :delete
end