#
# Cookbook Name:: ethna
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#include_recipe "php"

# pearでethnaのセットアップ
#php_pear_channel "pear.ethna.jp" do
#   action :discover
#end

#php_pear "PEAR" do
#  action :upgrade
#end

#php_pear "ethna/ethna" do
#  action :install
#end

#ダサいので上記の方法でやりたいけどうまく動かん。。
#ひとまずスクリプトでにげる。
script "install_pear" do
    interpreter "bash"
    user "root"
    cwd "/usr/local/src"
    code <<-EOH
        pear channel-discover pear.ethna.jp
        pear update-channels
        pear install -a ethna/ethna
    EOH
end
