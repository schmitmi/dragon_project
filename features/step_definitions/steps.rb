require 'watir-webdriver'

Given /^I am on the "(.*?)" page$/ do |page_url|
  $browser = Watir::Browser.new :ie
  $browser.goto page_url
end

When /^I click the "(.*?)" element "(.*?)" link$/ do |element, link_id|
  $browser.element(:id => link_id).click
end

And /^I enter "(.*?)" into the "(.*?)" text field$/ do |text, text_box|
  $browser.text_field(:id => text_box).set text
end

And /^I click the "(.*?)" button$/ do |button_name|
  $browser.button(:type => button_name).click
end

Then /^The page should display "(.*?)"$/ do |page_text|
  $browser.text.should include (page_text)
end

When /^The roadster count is more that the trans-am count$/ do
  buggy = $browser.span(:id, "extravote_1_16").text[2,4].to_i + 97
  cowboy =  $browser.span(:id, "extravote_1_19").text[2,4].to_i
  puts buggy
  puts cowboy
  if buggy > cowboy
    $browser.li(:id, "rating_1_19").click
    puts "I tried to click!"
  else
    puts "No clicky for you!"
  end
end

Then /^I close the browser$/ do
  puts "closing the browser"
  sleep 23
  $browser.close
  sleep 60
  puts "1 minute"
  sleep 60
  puts "2 minutes"
  sleep 60
  puts "3 minutes"
  sleep 60
  puts "4 minutes"
  sleep 60
  puts "5 minutes"

end

