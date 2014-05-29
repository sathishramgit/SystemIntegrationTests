Then(/^I navigate to Device page$/) do
  within("#project-site-header") do 
   find("option[value='devices']").click
  end
end

Then(/^I should verify "(.*?)" the devices$/) do |name|
    sleep 5
    page.has_content?("#{name}").should be_true
end
 
