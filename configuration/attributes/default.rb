#
# Cookbook:: configuration
# Attributes::default
#
# Attributes to be used in configuration for Linux Baseline 
#
# Copyright:: 2019, The Authors, All Rights Reserved.

default['config_disclaimer'] = '**Note:** This file was automatically created by dev-sec.io os-hardening configuration. If you use its automated setup, do not edit this file directly, but adjust the automation instead.'

# Used for os-05 to properly configure /etc/login.defs
default['configuration'].tap do |configuration|
  configuration['env']['extra_user_paths'] = []
  configuration['env']['root_path'] = '/'
  configuration['env']['umask'] = '027'
  configuration['auth'].tap do |auth|
    auth['pw_max_age'] = 60
    auth['pw_min_age'] = 7 # discourage password cycling
    auth['pw_warn_age'] = 7
    auth['retries'] = 5
    auth['lockout_time'] = 600 # 10min
    auth['maildir'] = '/var/mail'
    auth['timeout'] = 60
    auth['allow_homeless'] = false
    auth['login_defs']['template_cookbook'] = 'os-hardening'
    auth['root_ttys'] = %w[console tty1 tty2 tty3 tty4 tty5 tty6]
    auth['uid_min'] = 1000
    auth['uid_max'] = 60000
    auth['gid_min'] = 1000
    auth['gid_max'] = 60000
    auth['sys_uid_max'] = 999
    auth['sys_gid_max'] = 999
  end

  # Used for os-1o to Disable unused file systems
  configuration['security'].tap do |security|
    security['kernel']['disable_filesystems'] = %w[cramfs freevxfs jffs2 hfs hfsplus squashfs udf vfat]
  end
end