user 'cheftest'  do
	File.open("testfile.txt", w) {|f| f.write("write your stuff here") }
end