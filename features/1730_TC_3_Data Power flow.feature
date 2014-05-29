#Ticket no:#1730 - Daily Regression Test of beta projects in Production Environment

Feature: # On 1730 Ticket - test case #3 - For each Project, navigate to the "Site Views/Power Flow" page and click on an inverter icon.

Background: 
		   Given I have logged in as a admin user with Username "enfinity.admin@enfinity.admin" and password "Enfinity321"

@Testcase3
Scenario Outline: I want to verify inverter is displayed under SiteViews/Power Flow

		   Given I click the "<project>" page
		   When I click to "Site Views.png" links
		   Then I navigate to Power Flow page
		   When I click on to "Inv.png" equipment
		   Then I should navigates to inverter details page


Examples: Project List 
|			project            		   |                     
|Lemoore District Office.png           |
|Lemoore Engvall Elementary School.png |
|Lemoore Liberty Middle School.png     |
|Lemoore Meadow Elementary School.png  |
|MJUSD Boron District Office.png       |
|MJUSD Boron High School.png           |
|MJUSD West Boron Elementary.png       |