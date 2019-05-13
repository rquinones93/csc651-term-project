# # #Install & enable Apache

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end

# Example for creating directories and importing file
directory "/var/www/html/img" do
  action :create
end

directory "/var/www/html/img/about" do
  mode '0755' 
  action :create
end

directory "/var/www/html/img/team" do
	mode '0755' 
  action :create
end

cookbook_file "var/www/html/img/header-bg.jpg" do
  source "img/header-bg.jpg"
  mode '0755' 
  action :create
end

cookbook_file "/var/www/html/img/about/1.jpg" do
  source "img/about/1.jpg"
  mode '0755' 
  action :create
end

cookbook_file "/var/www/html/img/about/2.jpg" do
  source "img/about/2.jpg"
  mode '0755' 
  action :create
end

cookbook_file "/var/www/html/img/about/3.jpg" do
  source "img/about/3.jpg"
  mode '0755' 
  action :create
end

cookbook_file "/var/www/html/img/about/4.jpg" do
  source "img/about/4.jpg"
  mode '0755' 
  action :create
end


# Adding Team member pictures
cookbook_file "/var/www/html/img/team/0.jpg" do
  source "img/team/0.jpg"
  mode '0755' 
  action :create
end

cookbook_file "/var/www/html/img/team/1.jpg" do
  source "img/team/1.jpg"
  mode '0755' 
  action :create
end

cookbook_file "/var/www/html/img/team/2.jpg" do
  source "img/team/2.jpg"
  mode '0755' 
  action :create
end

cookbook_file "/var/www/html/img/team/3.jpg" do
  source "img/team/3.jpg"
  mode '0755' 
  action :create
end
