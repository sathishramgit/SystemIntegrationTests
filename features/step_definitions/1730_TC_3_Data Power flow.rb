Then(/^I navigate to Power Flow page$/) do
  within("#project-site-header") do 
   find("option[value='power']").click
  end
end


