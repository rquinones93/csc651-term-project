#
# Cookbook:: configuration
# Recipe:: files
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Deven
file '/home/deven/testfile.txt' do 
	content	'Test File Content'
end

file '/home/deven/Documents/index.html' do 
	content	'<p>Hello World!</p>'
end

file '/home/deven/Desktop/todo_notes.txt' do 
	content	`Don't forget to finish the project.`
end

file '/home/deven/Downloads/reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
end

# Robert
file '/home/robert/testfile.txt' do 
	content	'Test File Content'
end

file '/home/robert/Documents/index.html' do 
	content	'<p>Hello World!</p>'
end

file 'todo_notes.txt' do 
	content	`Don't forget to finish the project.`
	path	'/home/robert/Desktop/todo_notes.txt'
end

file '/home/robert/Downloads/reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
end

# Dawit
file '/home/dawit/testfile.txt' do 
	content	'Test File Content'
end

file '/home/dawit/Documents/index.html' do 
	content	'<p>Hello World!</p>'
end

file '/home/dawit/Desktop/todo_notes.txt' do 
	content	`Don't forget to finish the project.`
end

file '/home/dawit/Downloads/reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
end

# Andrew
file '/home/andrew/testfile.txt' do 
	content	'Test File Content'
end

file '/home/andrew/Documents/index.html' do 
	content	'<p>Hello World!</p>'
end

file '/home/andrew/Desktop/todo_notes.txt' do 
	content	`Don't forget to finish the project.`
end

file '/home/andrew/Downloads/reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
end

# Templates
template '/home/deven/testtemplate.txt' do
	source	'test.txt.erb'
end

template '/home/robert/testtemplate.txt' do
	source	'test.txt.erb'
end

template '/home/dawit/testtemplate.txt' do
	source	'test.txt.erb'
end

template '/home/andrew/testtemplate.txt' do
	source	'test.txt.erb'
end