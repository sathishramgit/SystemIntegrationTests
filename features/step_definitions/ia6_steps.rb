
Given(/^I have logged in as a admin user with Username "(.*?)" and password "(.*?)"$/) do |username, password|
  login(username, password)
end

