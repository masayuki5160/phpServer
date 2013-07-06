#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# yumでインストールする
package "httpd" do
    action :install
end


# ソースからコンパイルしてインストールしたいときはここで
#script "install_apache" do
#    interpreter "bash"
#    user "root"
#    cwd "/usr/local/src"
#   code <<-EOH
#       wget http://ftp.meisei-u.ac.jp/mirror/apache/dist//httpd/httpd-2.2.24.tar.gz
#       tar xzvf httpd-2.2.24.tar.gz
#       cd httpd-2.2.24
#        ./configure 
#        make
#        make install
#    EOH
#end

# httpd.confの設定
#template "/usr/local/apache2/conf/httpd.conf" do
#    source "httpd.conf.erb"
#end

# 起動スクリプトを追加
#template "/etc/init.d/httpd" do
#    source "httpd.erb"
#    mode 0644
#end

# ディレクトリの作成などしたいときはこんな感じで
#directory "/var/www" do
#  owner "apache"
#  group "apache"
#  recursive true
#  mode 0755
#  action :create
