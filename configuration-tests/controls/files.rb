#
# InSpec Profile:: configuration-tests
# Control:: files
#
# Copyright:: 2019, The Authors, All Rights Reserved.

control 'files' do
  impact 0.8
  desc '
    This test suite makes sure all files created from configuration::file exist
  '
  describe file("/home/deven/testfile.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'Test File Content'}
  end

  describe file("/home/deven/Documents/index.html") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq '<p>Hello World!</p>'}
  end

  describe file("/home/deven/Desktop/todo_notes.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq `Don't forget to finish the project.`}
  end

  describe file("/home/deven/Downloads/reading_list.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'What is the SysAdmin Textbook?'}
  end

  describe file("/home/deven/testtemplate.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'deven' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'This is a test template.'}
  end

  describe file("/home/robert/testfile.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'Test File Content'}
  end

  describe file("/home/robert/Documents/index.html") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq '<p>Hello World!</p>'}
  end

  describe file("/home/robert/Desktop/todo_notes.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq `Don't forget to finish the project.`}
  end

  describe file("/home/robert/Downloads/reading_list.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'What is the SysAdmin Textbook?'}
  end

  describe file("/home/robert/testtemplate.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'robert' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'This is a test template.'}
  end

  describe file("/home/dawit/testfile.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'Test File Content'}
  end

  describe file("/home/dawit/Documents/index.html") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq '<p>Hello World!</p>'}
  end

  describe file("/home/dawit/Desktop/todo_notes.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq `Don't forget to finish the project.`}
  end

  describe file("/home/dawit/Downloads/reading_list.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'What is the SysAdmin Textbook?'}
  end

  describe file("/home/dawit/testtemplate.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'dawit' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'This is a test template.'}
  end

  describe file("/home/andrew/testfile.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'Test File Content'}
  end

  describe file("/home/andrew/Documents/index.html") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq '<p>Hello World!</p>'}
  end

  describe file("/home/andrew/Desktop/todo_notes.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq `Don't forget to finish the project.`}
  end

  describe file("/home/andrew/Downloads/reading_list.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'What is the SysAdmin Textbook?'}
  end

  describe file("/home/andrew/testtemplate.txt") do
    it { should exist }
    it { should be_file }
    its('owner') { should eq 'andrew' }
    its('group') { should eq 'student' }
    its('mode') { should cmp '0755' }
    its('content') { should eq 'This is a test template.'}
  end
end