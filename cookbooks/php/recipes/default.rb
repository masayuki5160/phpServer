#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# yumでもろもろインストール(いれたいものがあるときはここに追加)
%w{php php-mbstring php-mysql}.each do |package_name|
    package package_name do
        action :install
    end
end

# ソースからコンパイルしてインストールしたいときはこれ
#script "install_php" do
#    interpreter "bash"
#    user "root"
#    cwd "/usr/local/src/"
#    code <<-EOH
#        CFLAGS=-O3
#        wget http://us3.php.net/get/php-5.3.16.tar.gz/from/jp1.php.net/mirror
#        tar xzvf php-5.3.16.tar.gz
#        cd php-5.3.16
#        ./configure
#        make
#        make install
#    EOH
#end

# php.iniの設定(かえたいときはここで)
#template "/etc/php.ini" do
#    source "php.ini.erb"
#end

# PHPの動作チェック用 
template "/var/www/html/index.php" do
    source "index.php.erb"
end
