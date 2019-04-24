directory '/home/dawit/testDirectory' do
    owner 'dawit'
    group '1234'
    mode '0755'
    action :create
  end

directory '/home/robert/testDirectory' do
  owner 'robert'
  group 'student'
  mode '0755'
  action :create
  end

directory '/home/deven/testDirectory' do
  owner 'deven'
  group 'student'
  mode '0755'
  action :create
  end

directory '/home/andrew/testDirectory' do
  owner 'andrew'
  group 'student'
  mode '0755'
  action :create
  end