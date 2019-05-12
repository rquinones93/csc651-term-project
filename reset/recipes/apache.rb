#
# Cookbook:: reset
# Recipe:: apache
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package "apache2" do
  action :purge
end

# # Virtual Hosts Files

node["learn_chef_apache2"]["sites"].each do |sitename, data|
  document_root = "/var/www/html/#{sitename}"

  directory document_root do
    recursive true
    action :delete
  end

  
  file "/etc/apache2/sites-available/#{sitename}.conf" do
    action :delete
  end

  directory "/var/www/html/#{sitename}/public_html" do
    action :delete
  end

  directory "/var/www/html/#{sitename}/logs" do
    action :delete
  end

end

file '/var/www/html/index.html' do
  action :delete
end

# Example for creating directories and importing file
directory "/var/www/html/img" do
  action :delete
end

directory "/var/www/html/img/about" do
  action :delete
end

directory "/var/www/html/img/team" do
  action :delete
end

directory "/var/www/html/css" do
  action :delete
end

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

file "/var/www/html/css/agency.min.css" do
  action :delete
end

file "/var/www/html/css/agency.css" do
  action :delete
end