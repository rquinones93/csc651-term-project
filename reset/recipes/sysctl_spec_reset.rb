#
# Cookbook:: reset
# Recipe:: sysctl_spec_rest
#
# Recipe to comply with Dev-Sec's Linux Security Baseline InSpec Tests
# https://github.com/dev-sec/linux-baseline/blob/master/controls/os_spec.rb
# Set proper kernel parameters for heightened security
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# sysctl-01 - IPv4 Forwarding
sysctl 'net.ipv4.ip_forward' do
  value 0
end

sysctl 'net.ipv4.conf.all.forwarding' do
  value 0
end

# sysctl-02 - Reverse Path Filtering
sysctl 'net.ipv4.conf.all.rp_filter' do
  value 1
end

sysctl 'net.ipv4.conf.default.rp_filter' do
  value 1
end

# sysctl-03 - ICMP Ignore Bogus Error Responses
sysctl 'net.ipv4.icmp_ignore_bogus_error_responses' do
  value 1
end

# sysctl-04 - ICMP echo ignore broadcasts
sysctl 'net.ipv4.icmp_echo_ignore_broadcasts' do
  value 1
end

# sysctl-05 - ICMP ratelimit
sysctl 'net.ipv4.icmp_ratelimit' do
  value 1000
end

# sysctl-06 - ICMP ratemask
sysctl 'net.ipv4.icmp_ratemask' do
  value 6168
end

# sysctl-07 - TCP timestamps
sysctl 'net.ipv4.tcp_timestamps' do
  value 1
end

# sysctl-08 - ARP ignore
sysctl 'net.ipv4.conf.all.arp_ignore' do
  value 0
end

# sysctl-09 - ARP announce
sysctl 'net.ipv4.conf.all.arp_announce' do
  value 0
end

# sysctl-10 - TCP RFC1337 Protect Against TCP Time-Wait
sysctl 'net.ipv4.tcp_rfc1337' do
  value 0
end

# sysctl-11 - Protection against SYN flood attacks
sysctl 'net.ipv4.tcp_syncookies' do
  value 1
end

# sysctl-12 - Shared Media IP Architecture
sysctl 'net.ipv4.conf.all.shared_media' do
  value 1
end

sysctl 'net.ipv4.conf.default.shared_media' do
  value 1
end

# sysctl-13 - Disable Source Routing
sysctl 'net.ipv4.conf.all.accept_source_route' do
  value 0
end

sysctl 'net.ipv4.conf.default.accept_source_route' do
  value 1
end

# sysctl-14 - Disable acceptance of all IPv4 redirected packets
sysctl 'net.ipv4.conf.all.accept_redirects' do
 value 1
end

sysctl 'net.ipv4.conf.default.accept_redirects' do
  value 1
end

# sysctl-15 - Disable acceptance of all secure redirected packets
sysctl 'net.ipv4.conf.all.secure_redirects' do
  value 1
end

sysctl 'net.ipv4.conf.default.secure_redirects' do
  value 1
end

# sysctl-16 - Disable sending of redirects packets
sysctl 'net.ipv4.conf.default.send_redirects' do
  value 1
end

sysctl 'net.ipv4.conf.all.send_redirects' do
  value 1
end

# sysctl-17 - Disable log martians
sysctl 'net.ipv4.conf.all.log_martians' do
  value 0
end

sysctl 'net.ipv4.conf.default.log_martians' do
  value 0
end

# sysctl-18 - Disable IPv6 if it is not needed
sysctl 'net.ipv6.conf.all.disable_ipv6' do
  value 0
end

# sysctl-19 - IPv6 Forwarding
sysctl 'net.ipv6.conf.all.forwarding' do
  value 0
end

# sysctl-20 - Disable acceptance of all IPv6 redirected packets
sysctl 'net.ipv6.conf.default.accept_redirects' do
  value 1
end

sysctl 'net.ipv6.conf.all.accept_redirects' do
  value 1
end

# sysctl-21 - Disable acceptance of IPv6 router solicitations messages
sysctl 'net.ipv6.conf.default.router_solicitations' do
  value -1
end

# sysctl-22 - Disable Accept Router Preference from router advertisement
sysctl 'net.ipv6.conf.default.accept_ra_rtr_pref' do
  value 1
end

# sysctl-23 - Disable learning Prefix Information from router advertisement
sysctl 'net.ipv6.conf.default.accept_ra_pinfo' do
  value 1
end

# sysctl-24 - Disable learning Hop limit from router advertisement
sysctl 'net.ipv6.conf.default.accept_ra_defrtr' do
  value 1
end

# sysctl-25 - Disable the system`s acceptance of router advertisement
sysctl 'net.ipv6.conf.all.accept_ra' do
  value 1
end

sysctl 'net.ipv6.conf.default.accept_ra' do
  value 1
end

# sysctl-26 - Disable IPv6 autoconfiguration
sysctl 'net.ipv6.conf.default.autoconf' do
  value 1
end

# sysctl-27 - Disable neighbor solicitations to send out per address
sysctl 'net.ipv6.conf.default.dad_transmits' do
  value 1
end

# sysctl-28 - Assign one global unicast IPv6 addresses to each interface
sysctl 'net.ipv6.conf.default.max_addresses' do
  value 16
end

# sysctl-29 - Disable loading kernel modules
sysctl 'kernel.modules_disabled' do
  value 0
end

# sysctl-30 - Magic SysRq
sysctl 'kernel.sysrq' do
  value 176
end

# sysctl-31a - Secure Core Dumps - dump settings
sysctl 'fs.suid_dumpable' do
  value 0
end

# sysctl-31b - Secure Core Dumps - dump path
## Skipped based on success of 31a

# sysctl-32 - kernel.randomize_va_space
sysctl 'kernel.randomize_va_space' do
  value 2
end

# sysctl-33 - CPU No execution Flag or Kernel ExecShield
## Done by Ubuntu OS