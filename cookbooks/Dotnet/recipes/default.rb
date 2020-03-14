#
# Cookbook:: Dotnet
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#

remote_file "packages-microsoft-prod.rpm" do
    source "https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm"
    action :create
end

rpm_package "packages-microsoft-prod" do
    source "packages-microsoft-prod.rpm"
    action :install
end

yum_package 'dotnet' do
  package_name "dotnet-sdk-3.1"
  action :install
end
