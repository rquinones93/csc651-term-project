#file creation
file 'testfile.txt' do 
	content	'CHECKING TO SEE!'
	path	'/home/cheftest/testfile.txt'
end

file 'testfile.txt' do 
	content	'CHECKING TO SEE!'
	path	'/home/deven/testfile.txt'
end

file 'testfile.txt' do 
	content	'CHECKING TO SEE!'
	path	'/home/robert/testfile.txt'
end

file 'testfile.txt' do 
	content	'CHECKING TO SEE!'
	path	'/home/dawit/testfile.txt'
end

file 'testfile.txt' do 
	content	'CHECKING TO SEE!'
	path	'/home/andrew/testfile.txt'
end


#template creation
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
