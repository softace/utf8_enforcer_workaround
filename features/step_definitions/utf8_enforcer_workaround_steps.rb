# -*- coding: utf-8 -*-
Then /there is (a|no) utf8 input tag/ do |exists|
  rails32_xpath = "//input[@name='utf8' and @type='hidden' and @value='✓']"
  if exists == 'a'
    page.should have_xpath(rails32_xpath, visible: false)
  elsif exists == 'no'
    page.should have_no_xpath(rails32_xpath, visible: false)
  else
    raise ArgumentError.new("exists shall be either 'a' or 'no'")
  end
end

Given /I use Internet Explorer/ do
  Capybara.current_driver = :rack_test_non_compliant
end

Given /I use a compliant browser/ do
  Capybara.current_driver = :rack_test_compliant
end
