#
# Cookbook:: configuration
# Recipe:: files
#
# Copyright:: 2019, The Authors, All Rights Reserved.

# Deven
file 'testfile.txt' do 
	content	'Test File Content'
	path	'/home/deven/testfile.txt'
end

file 'index.html' do 
	content	'<p>Hello World!</p>'
	path	'/home/deven/Documents/index.html'
end

file 'todo_notes.txt' do 
	content	`Don't forget to finish the project.`
	path	'/home/deven/Desktop/todo_notes.txt'
end

file 'reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
	path	'/home/deven/Downloads/reading_list.txt'
end

# Robert
file 'testfile.txt' do 
	content	'Test File Content'
	path	'/home/robert/testfile.txt'
end

file 'index.html' do 
	content	'<p>Hello World!</p>'
	path	'/home/robert/Documents/index.html'
end

file 'todo_notes.txt' do 
	content	`Don't forget to finish the project.`
	path	'/home/robert/Desktop/todo_notes.txt'
end

file 'reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
	path	'/home/robert/Downloads/reading_list.txt'
end

# Dawit
file 'testfile.txt' do 
	content	'Test File Content'
	path	'/home/dawit/testfile.txt'
end

file 'index.html' do 
	content	'<p>Hello World!</p>'
	path	'/home/dawit/Documents/index.html'
end

file 'todo_notes.txt' do 
	content	`Don't forget to finish the project.`
	path	'/home/dawit/Desktop/todo_notes.txt'
end

file 'reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
	path	'/home/dawit/Downloads/reading_list.txt'
end

# Andrew
file 'testfile.txt' do 
	content	'Test File Content'
	path	'/home/andrew/testfile.txt'
end

file 'index.html' do 
	content	'<p>Hello World!</p>'
	path	'/home/andrew/Documents/index.html'
end

file 'todo_notes.txt' do 
	content	`Don't forget to finish the project.`
	path	'/home/andrew/Desktop/todo_notes.txt'
end

file 'reading_list.txt' do 
	content	'What is the SysAdmin Textbook?'
	path	'/home/andrew/Downloads/reading_list.txt'
end

# Templates
template '/home/deven/testTemplate.txt' do
	source	'test.erb'
end

template '/home/robert/testTemplate.txt' do
	source	'test.erb'
end

template '/home/dawit/testTemplate.txt' do
	source	'test.erb'
end

template '/home/andrew/testTemplate.txt' do
	source	'test.erb'
end