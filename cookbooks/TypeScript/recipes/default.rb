#
# Cookbook:: TypeScript
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

remote_file 'setup_12.x' do
  source "https://rpm.nodesource.com/setup_12.x"
  action :create
end

execute "Setup NodeJS" do
  command "bash setup_12.x"
  action :run
end

yum_package 'nodejs' do
  package_name "nodejs"
  action :install
end

execute "Install TypeScript" do
  command "npm install -g typescript"
  action :run
end

