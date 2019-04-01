#
# Cookbook:: configuration
# Recipe:: os_spec
#
# Recipe to comply with Dev-Sec's Linux Security Baseline InSpec Tests
# https://github.com/dev-sec/linux-baseline/blob/master/controls/os_spec.rb
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
template '/etc/login.defs' do
  source 'login.defs.erb'
  owner 'root'
  group 'root'
  mode '0444'
  variables(
    additional_user_paths:    node['configuration']['env']['extra_user_paths'].join(':'), # :/usr/local/games:/usr/games
    umask:                    node['configuration']['env']['umask'],
    password_max_age:         node['configuration']['auth']['pw_max_age'],
    password_min_age:         node['configuration']['auth']['pw_min_age'],
    password_warn_age:        node['configuration']['auth']['pw_warn_age'],
    login_retries:            node['configuration']['auth']['retries'],
    login_timeout:            node['configuration']['auth']['timeout'],
    chfn_restrict:            '', # "rwh"
    allow_login_without_home: node['configuration']['auth']['allow_homeless'],
    uid_min:                  node['configuration']['auth']['uid_min'],
    uid_max:                  node['configuration']['auth']['uid_max'],
    gid_min:                  node['configuration']['auth']['gid_min'],
    gid_max:                  node['configuration']['auth']['gid_max'],
    sys_uid_min:              node['configuration']['auth']['sys_uid_min'],
    sys_uid_max:              node['configuration']['auth']['sys_uid_max'],
    sys_gid_min:              node['configuration']['auth']['sys_gid_min'],
    sys_gid_max:              node['configuration']['auth']['sys_gid_max'],
    mail_dir:                 node['configuration']['auth']['maildir']
  )
end

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
template '/etc/modprobe.d/dev-sec.conf' do
  source 'filesystem_blacklisting.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables filesystems: node['configuration']['security']['kernel']['disable_filesystems']
end

# os-11 - Protect log-directory
directory '/var/log' do
  owner 'root'
  group 'root'
end