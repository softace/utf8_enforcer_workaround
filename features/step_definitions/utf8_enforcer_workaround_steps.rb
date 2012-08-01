# -*- coding: utf-8 -*-
Then /there is (a|no) utf8 input tag/ do |exists|
  rails32_xpath = "//input[@name='utf8' and @type='hidden' and @value='✓']"
  if exists == 'a'
    page.should have_xpath(rails32_xpath)
  elsif exists == 'no'
    page.should have_no_xpath(rails32_xpath)
  else
    raise ArgumentError.new("exists shall be either 'a' or 'no'")
  end
end

Then /I use Internet Explorer/ do
   set_headers({'HTTP_USER_AGENT'=> "Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 5.1)"})
end
