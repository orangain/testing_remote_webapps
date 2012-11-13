#coding: utf-8

Given /^I am on the "(.*?)" page of Google$/ do |url|
  visit url
end

When /^I search for "(.*?)"$/ do |query|
  fill_in 'q', :with => query
  click_button 'Google 検索'
end

Then /^I should get response with content\-type "(.*?)"$/ do |content_type|
  page.response_headers['Content-Type'].should match('^' + Regexp.escape(content_type))
end

Then /^I should see "(.*?)" in the title bar$/ do |title|
  page.should have_selector('title', :text => title)
end

Then /^I should see "(.*?)" in the page$/ do |content|
  page.should have_content(content)
end
