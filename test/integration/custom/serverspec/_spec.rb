require 'serverspec'

# Required by serverspec
set :backend, :exec

describe 'APT Repository Configurations' do

  describe file('/etc/apt/sources.list.d/mysql.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb http:\/\/repo\.mysql\.com\/apt\/debian jessie mysql-5.7 mysql-apt-config mysql-tools/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/debian-stretch.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb http:\/\/mirrors.linode.com\/debian stretch main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/jessie-backports.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb http:\/\/ftp\.debian\.org\/debian jessie-backports main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/elastic-5.x.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb https:\/\/artifacts\.elastic\.co\/packages\/5\.x\/apt stable main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/jenkins.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb http:\/\/pkg\.jenkins-ci\.org\/debian binary\// }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/nginx.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb http:\/\/nginx\.org\/packages\/debian jessie nginx/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/docker.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb https:\/\/apt\.dockerproject\.org\/repo debian-jessie main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/saltstack.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb https:\/\/repo.saltstack.com\/apt\/debian\/8\/amd64\/latest jessie main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/non-free.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb http:\/\/mirrors\.linode\.com\/debian jessie non-free contrib/ }
    its(:content) { should match /^deb http:\/\/mirrors\.linode\.com\/debian jessie-updates non-free/ }
    its(:content) { should match /^deb http:\/\/security\.debian\.org jessie\/updates non-free/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/ceph.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb https\:\/\/download\.ceph\.com\/debian-luminous jessie main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
  describe file('/etc/apt/sources.list.d/nodesource.list') do
    it { should exist }
    it { should be_file }
    its(:content) { should match /^deb https\:\/\/deb\.nodesource\.com\/node_8\.x jessie main/ }
    it { should be_mode 644 }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end

end
