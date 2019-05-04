#delete files
file 'testfile.txt' do 
	path	'/home/cheftest/testfile.txt'
	action 	:delete
end

file 'testfile.txt' do 
	path	'/home/andrew/testfile.txt'
	action 	:delete
end

file 'testfile.txt' do 
	path	'/home/dawit/testfile.txt'
	action 	:delete
end

file 'testfile.txt' do 
	path	'/home/robert/testfile.txt'
	action 	:delete
end

file 'testfile.txt' do 
	path	'/home/deven/testfile.txt'
	action 	:delete
end


#delete templates
file 'testTemplate.txt' do 
	path 	'/home/deven/testTemplate.txt'
	action	:delete
end

file 'testTemplate.txt' do 
	path 	'/home/andrew/testTemplate.txt'
	action	:delete
end

file 'testTemplate.txt' do 
	path 	'/home/robert/testTemplate.txt'
	action	:delete
end

file 'testTemplate.txt' do 
	path 	'/home/dawit/testTemplate.txt'
	action	:delete
end