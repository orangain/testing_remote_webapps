#coding: utf-8

require 'capybara'
require 'capybara/cucumber'
require 'capybara/mechanize'
require 'rspec'

# テスト対象のサイト
# ドライバがmechanizeの場合、他のサイトにもアクセスできる。
Capybara.app_host = 'http://google.co.jp'

# デフォルトで使われるドライバ
# これを指定しないと、rack_testが使われるため
# PHPなどRack以外のアプリはテストできない。
Capybara.default_driver = :mechanize
