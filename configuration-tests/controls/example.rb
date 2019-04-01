# encoding: utf-8
# copyright: 2018, The Authors

title 'Configuration Cookbook Tests'

describe package('apache2') do
  it { should be_installed }
end

describe file('/home/cheftest/testfile.txt') do
  it { should exist }
  it { should be_file }
  its('content') { should match 'CHECKING TO SEE!'}
end
# # you can also use plain tests
# describe file('/tmp') do
#   it { should be_directory }
# end

# # you add controls here
# control 'tmp-1.0' do                        # A unique ID for this control
#   impact 0.7                                # The criticality, if this control fails.
#   title 'Create /tmp directory'             # A human-readable title
#   desc 'An optional description...'
#   describe file('/tmp') do                  # The actual test
#     it { should be_directory }
#   end
# end