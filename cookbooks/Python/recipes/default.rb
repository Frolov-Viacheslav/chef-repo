#
# Cookbook:: Python
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

yum_package 'Centos-release' do
  package_name 'centos-release-scl'
  action :install
end

yum_package 'Python36' do
  package_name 'rh-python36'
  action :install
end


file '/etc/profile.d/scl-python.sh' do
  content 'source /opt/rh/rh-python36/enable'
  action :create
end
