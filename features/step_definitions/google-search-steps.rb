When /I search Google for "(.*)"/i do |value|
  @browser.get("https://google.com")
  @google_search.search_input.send_keys(value)
  @browser.action.send_keys(:enter).perform
end

Then /I should see "(.*)" in the result/i do |value|
  @browser.find_element(tag_name: 'body').text.should include("#{value}")
end