#
# Cookbook:: PHP
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
#
yum_package 'Install epel-release and yum-utils' do
  package_name ['epel-release', 'yum-utils']
  action :install
end

remote_file "remi-release-7.rpm" do
    source "http://rpms.remirepo.net/enterprise/remi-release-7.rpm"
    action :create
end

rpm_package "remi-release" do
    source "remi-release-7.rpm"
    action :install
end

yum_repository 'remi-php73' do
    mirrorlist 'http://cdn.remirepo.net/enterprise/7/php73/mirror'
    description "Remi's RPM repository PHP 7.3"
    enabled true
    repositoryid 'remi-php73'
    gpgcheck true
    gpgkey 'http://rpms.remirepo.net/RPM-GPG-KEY-remi'
  end

yum_package 'php packages' do
  package_name ['php', 'php-common', 'php-opcache', 'php-mcrypt', 'php-cli', 'php-gd', 'php-curl', 'php-mysqlnd']
  action :install
end
