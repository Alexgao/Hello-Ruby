# -*- coding:utf-8 -*-
require 'watir-webdriver'

puts "Open browser."
#b = Watir::Browser.new :ie
#b = Watir::Browser.new :chrome
b = Watir::Browser.new :firefox #, :profile=> firefoxConfig
b.window.maximize
b.goto 'http://heremaps.cn/ '
searchBox = b.text_field :name => 'q'
searchBox.when_present.set '北京'

searchButton = b.button :name => 'appbar-search-button'
searchButton.click

#b.send_keys :enter

b.quit
puts "Close browser."


def firefoxConfig
  proxy = 'ber01vmompxy002.dv.ber01.locn.s.nokia.com: 8080'
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.download.dir'] = "/tmp/webdriver-downloads"
  profile['browser.download.folderList'] = 2
  profile['browser.helperApps.neverAsk.saveToDisk'] = "application/pdf"
  profile.proxy = Selenium::WebDriver::Proxy.new :http => "#{proxy}", :ssl => "#{proxy}"
  return profile
end











################ 补充小知识 #################
#元素定位
#    :id                => 'id',
#    :name              => 'name',
#    :class             => 'class name',
#    :class_name        => 'class name',
#    :link              => 'link text',
#    :link_text         => 'link text',
#    :partial_link_text => 'partial link text',
#    :text              => 'text'
#    :xpath             => 'xpath'。


# 隐式等待（动态等待）
#Watir::Wait.until { ... }:         等待block里面的值为true停止
#object.when_present.set:           当次控件存在你可以做set
#object.wait_until_present:         等待到控件出现为止
#object.wait_while_present:         等待到控件消失为止