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

Given /^The roadster count is more that the trans-am count$/ do

end