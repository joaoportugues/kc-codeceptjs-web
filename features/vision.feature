Feature: Vision section of the page
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate to Vision and read more about it
  
  Background: navigate to Vision section of the page
    Given the user has browsed to the homepage
  	When user clicks "Vision"
      
  Scenario: user is sent to Vision section with correct information and logos
    Then user sees "Vision" button is "active"
    Then user sees "Home" button is "inactive"
    Then user sees "Our vision" with format "p"
    Then user sees "company logo small"
    
  @runThis  
  Scenario: user is sent to Vision and then back home with correct info and logos
    Then user sees "Vision" button is "active"
  	When user clicks "Back to top"
  	Then user sees "Home" button is "active"
  	Then user sees "Vision" button is "inactive"
