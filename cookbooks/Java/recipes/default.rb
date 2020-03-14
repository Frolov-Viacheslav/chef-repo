#
# Cookbook:: Java
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

yum_package 'Java' do
  package_name "java-1.8.0-openjdk"
  action :install
end
