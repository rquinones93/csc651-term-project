# #Install & enable Apache

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end


# # Virtual Hosts Files

node["learn_chef_apache2"]["sites"].each do |sitename, data|
  document_root = "/var/www/html/#{sitename}"

  directory document_root do
    mode "0755"
    recursive true
  end

  execute "enable-sites" do
    command "a2ensite #{sitename}"
    action :nothing
  end

  
  template "/etc/apache2/sites-available/#{sitename}.conf" do
    source "virtualhosts.erb"
    mode "0644"
    variables(
        :document_root => document_root,
        :port => data["port"],
        :serveradmin => data["serveradmin"],
        :servername => data["servername"],
    )
    notifies :run, "execute[enable-sites]"
    notifies :restart, "service[apache2]"
  end

  directory "/var/www/html/#{sitename}/public_html" do
    action :create
  end

  directory "/var/www/html/#{sitename}/logs" do
    action :create
  end

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
  action :create
end

directory "/var/www/html/img/team" do
  action :create
end

directory "/var/www/html/css" do
  action :create
end

template "/var/www/html/img/about/1.jpg" do
  source "img/about/1.jpg"
  action :create
end

template "/var/www/html/img/about/2.jpg" do
  source "img/about/2.jpg"
  action :create
end

template "/var/www/html/img/about/3.jpg" do
  source "img/about/3.jpg"
  action :create
end

template "/var/www/html/img/about/4.jpg" do
  source "img/about/4.jpg"
  action :create
end


# Adding Team member pictures
template "/var/www/html/img/team/0.jpg" do
  source "img/team/0.jpg"
  action :create
end

template "/var/www/html/img/team/1.jpg" do
  source "img/team/1.jpg"
  action :create
end

template "/var/www/html/img/team/2.jpg" do
  source "img/team/2.jpg"
  action :create
end

template "/var/www/html/img/team/3.jpg" do
  source "img/team/3.jpg"
  action :create
end

# Adding css directories to templates
template "/var/www/html/css/agency.min.css" do
  source "css/agency.min.css"
  action :create
end

template "/var/www/html/css/agency.css" do
  source "css/agency.css"
  action :create
end