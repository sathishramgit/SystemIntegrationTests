Given(/^I click the "(.*?)" page$/) do |name|
 within (".table-container") do
    while not @screen.exists "#{name}"
    sleep 20
    end
 @screen.click "#{name}"
 end
end

When(/^I click to "(.*?)" links$/) do |name|
  while not @screen.exists "#{name}"
    sleep 3
  end
 @screen.click "#{name}"
end

Then(/^I navigate to Data Acquisition page$/) do
  within("#project-site-header") do 
   find("option[value='daq']").click
  end
end

When(/^I click on to "(.*?)" equipment$/) do |name|
  within("#project-site-content") do
   while not @screen.exists "#{name}"
    sleep 3
   end
  @screen.doubleClick "#{name}"
  end
end

 Then(/^I should navigates to inverter details page$/) do
    page.has_content?("Inverter INV-1").should be_true
    sleep 3
 end
 
