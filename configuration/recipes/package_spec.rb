#
# Cookbook:: configuration
# Recipe:: package_spec
#
# Recipe to comply with Dev-Sec's Linux Security Baseline InSpec Tests
# https://github.com/dev-sec/linux-baseline/blob/master/controls/os_spec.rb
# Make sure specific packages are installed or NOT installed after initial setup
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# package-01 - Do not run/install deprecated inetd or xinetd
package 'inetd' do
  action :purge
end

package 'xinetd' do
  action :purge
end

# package-02 - Do not install telnet server
package 'telnetd' do
  action :purge
end

# package-03 - Do not install rsh-server
package 'rsh-server' do
  action :purge
end

# package-05 - Do not install ypserv
package 'ypserv' do
  action :purge
end

# package-06 - Do not install tftp-server
package 'tftp-server' do
  action :purge
end

# package-07 - Install syslog server package
package 'rsyslog' do
  action :install
end

# package-08 - Install auditd and set configuration
package 'auditd' do
  action :install
end

# package-09 - Ensure prelink is disabled and not installed
package 'prelink' do
  action :purge
end