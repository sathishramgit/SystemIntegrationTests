#Ticket no:#1730 - Daily Regression Test of beta projects in Production Environment

Feature: # On 1730 Ticket - test case #3 - For each Project, navigate to the "Site Views/Devices" page and verify a list of Devices displays.

Background: 
		   Given I have logged in as a admin user with Username "enfinity.admin@enfinity.admin" and password "Enfinity321"

@Testcase5
Scenario Outline: I want to verify list devices diplays.

		   Given I click the "<Project>" page
		   When I click to "Site Views.png" links
		   Then I navigate to Device page
		   Then I should verify "<Equipment>" the devices
		 

Examples: verify the Cell Temp 
|			Project       			   | Equipment 	 |                  
|Lemoore District Office.png           |Cell Temp	 |
|Lemoore Engvall Elementary School.png |Cell Temp	 |	
|Lemoore Liberty Middle School.png     |Cell Temp	 |
|Lemoore Meadow Elementary School.png  |Cell Temp	 |
|MJUSD Boron District Office.png       |Cell Temp	 |
|MJUSD Boron High School.png           |Cell Temp	 |
|MJUSD West Boron Elementary.png       |Cell Temp	 |

Examples: verify the Sensor	  
|			Project        			   | Equipment 	 |                  
|Lemoore District Office.png           |Sensor	 	 |
|Lemoore Engvall Elementary School.png |Sensor		 |	
|Lemoore Liberty Middle School.png     |Sensor	 	 |
|Lemoore Meadow Elementary School.png  |Sensor	 	 |
|MJUSD Boron District Office.png       |Sensor	 	 |
|MJUSD Boron High School.png           |Sensor		 |
|MJUSD West Boron Elementary.png       |Sensor		 |

Examples: verify the Inverter	  
|			Project        			   | Equipment 	 |                  
|Lemoore District Office.png           |Inverter	 |
|Lemoore Engvall Elementary School.png |Inverter	 |	
|Lemoore Liberty Middle School.png     |Inverter	 |
|Lemoore Meadow Elementary School.png  |Inverter	 |
|MJUSD Boron District Office.png       |Inverter	 |
|MJUSD Boron High School.png           |Inverter	 |
|MJUSD West Boron Elementary.png       |Inverter	 |

Examples: verify the Meter		  
|			Project       			   | Equipment 	 |                  
|Lemoore District Office.png           |Meter		 |
|Lemoore Engvall Elementary School.png |Meter		 |	
|Lemoore Liberty Middle School.png     |Meter		 |
|Lemoore Meadow Elementary School.png  |Meter		 |
|MJUSD Boron District Office.png       |Meter		 |
|MJUSD Boron High School.png           |Meter		 |
|MJUSD West Boron Elementary.png       |Meter		 |