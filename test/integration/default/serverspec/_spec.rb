require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'APT Repository Configurations' do
  
  describe file('/etc/apt/sources.list.d/jessie-backports.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb http:\/\/ftp\.debian\.org\/debian jessie-backports main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

  describe file('/etc/apt/sources.list.d/mysql.list') do
    it { should_not exist }
  end
  describe file('/etc/apt/sources.list.d/debian-stretch.list') do
    it { should_not exist }
  end
  describe file('/etc/apt/sources.list.d/elastic-5.x.list') do
    it { should_not exist }
  end
  describe file('/etc/apt/sources.list.d/jenkins.list') do
    it { should_not exist }
  end
  describe file('/etc/apt/sources.list.d/nginx.list') do
    it { should_not exist }
  end
  describe file('/etc/apt/sources.list.d/docker.list') do
    it { should_not exist }
  end
  describe file('/etc/apt/sources.list.d/ceph.list') do
    it { should_not exist }
  end
  describe file('/etc/apt/sources.list.d/nodesource.list') do
    it { should_not exist }
  end

end
