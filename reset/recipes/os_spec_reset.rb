#
# Cookbook:: reset
# Recipe:: os_spec_reset
#
# Revert changes made by configuration::os_spec
# Some Chef resources are the same, they're the same as
# the default config Ubuntu provides
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# os-01 - /etc/hosts.equiv should not exist
file '/etc/hosts.equiv' do
  action :delete
  only_if { File.exist? '/etc/hosts.equiv'}
end

# os-02 - Proper owner and permissions for /etc/shadow
file '/etc/shadow' do
  owner 'root'
  group 'shadow'
  mode '0640'
end

# os-03 - Proper owner and permissions for /etc/passwd
file '/etc/passwd' do
  owner 'root'
  group 'root'
  mode '0644'
end

# os-04 - Dot in PATH variable
## Set by Ubuntu OS

# os-05 - Proper owner and permissions for /etc/login.defs, 
# proper PATH variable and umask in login.defs
# DO nothing

# os-06 - SUID/SGID Blacklist should be empty
## Set by Ubuntu OS

# os-07 - Unique UIDs and GIDs
## Set by Ubuntu OS

# os-08 - Proper system entropy
## Set by Ubuntu OS - in an irritating way

# os-09 - .rhosts and .netrc file should be empty or not exist
file 'home/cheftest/.rhosts' do
 action :delete
  only_if { File.exist? 'home/cheftest/.rhosts'}
end

file 'home/cheftest/.netrc' do
 action :delete
  only_if { File.exist? 'home/cheftest/.netrc'}
end

# os-10 - Disable unused filesystems
# Do nothing

# os-11 - Protect log-directory
directory '/var/log' do
  owner 'root'
  group 'root'
end