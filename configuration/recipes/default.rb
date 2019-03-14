#
# Cookbook:: configuration
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

package 'apache2'

file '/home/cheftest/testfile.txt' do
  content 'CHECKING TO SEE!'
end