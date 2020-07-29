Feature: Vision section of the page
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate to Vision and read more about it
  
  Background: navigate to Vision section of the page
    Given the user has browsed to the homepage
      
  Scenario: user is sent to Vision section with correct information and logos
    When user clicks "Vision"
    Then user sees "Vision" button is "active"
    Then user sees "Home" button is "inactive"
    Then user sees "Our vision" with format "p"
    Then user sees "company logo small"
     
  Scenario: user is sent to Vision and then back home with correct info and logos
    When user clicks "Vision"
    Then user sees "Vision" button is "active"
  	When user clicks "Back to top"
  	Then user sees "Home" button is "active"
  	Then user sees "Vision" button is "inactive"
  	
  Scenario: user is sent to Vision section with correct information and logos (German)
    When user clicks "language selector"
    When user clicks "German flag"
    When user clicks "Vision"
    Then user sees "Vision" button is "active"
    Then user sees "Zuhause" button is "inactive"
    Then user sees "Unsere Vision" with format "p"
    Then user sees "company logo small"
  
  @TKC-4 
  Scenario: user is sent to Vision section and then after changing language the section is displayed correctly (German)
    When user clicks "Vision"
    When user clicks "language selector"
    When user clicks "German flag"
    Then user sees "Vision" button is "active"
    Then user sees "Zuhause" button is "inactive"
    Then user sees "Unsere Vision" with format "p"
    
  Scenario: user is sent to Vision section with correct information and logos (Spanish)
    When user clicks "language selector"
    When user clicks "Spanish flag"
    When user clicks "Visio"
    Then user sees "Visio" button is "active"
    Then user sees "Hogar" button is "inactive"
    Then user sees "Nuestra visión" with format "p"
    Then user sees "company logo small"

  @TKC-4
  Scenario: user is sent to Vision section and then after changing language the section is displayed correctly (Spanish)
    When user clicks "Vision"
    When user clicks "language selector"
    When user clicks "Spanish flag"
    Then user sees "Visio" button is "active"
    Then user sees "Hogar" button is "inactive"
    Then user sees "Nuestra visión" with format "p"

