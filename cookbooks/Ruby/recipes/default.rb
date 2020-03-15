#
# Cookbook:: Ruby
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
yum_package 'Ruby' do
  package_name "ruby"
  action :install
end
