Feature: Features section of the page
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate to Features and read more about it
  
  Background: navigate to Vision section of the page
    Given the user has browsed to the homepage
      
  Scenario: user is sent to Features section with correct information and logos
    When user clicks "Features"
    Then user sees "Features" button is "active"
    Then user sees "Home" button is "inactive"
    Then user sees "How it works" with format "p"
    Then user sees "company logo small"
     
  Scenario: user is sent to Features and then back home using to top button with correct info and logos
    When user clicks "Features"
    Then user sees "Features" button is "active"
  	When user clicks "Back to top"
  	Then user sees "Home" button is "active"
  	Then user sees "Features" button is "inactive"
  	Then user sees "company logo"
  	
  Scenario: user is sent to Features and then back home using home button with correct info and logos
    When user clicks "Features"
    Then user sees "Features" button is "active"
  	When user clicks "Home"
  	Then user sees "Home" button is "active"
  	Then user sees "Features" button is "inactive"
  	Then user sees "company logo"
  	
  Scenario: user is sent to Features section with correct information and logos (German)
    When user clicks "language selector"
    When user clicks "German flag"
    When user clicks "Wie funktioniert's"
    Then user sees "Wie funktioniert's" button is "active"
    Then user sees "Zuhause" button is "inactive"
    Then user sees "Wie funktioniert's" with format "p"
    Then user sees "Übersicht" with format "p"
    Then user sees "company logo small"
    
  Scenario: user is sent to Features section with correct information and logos (Spanish)
    When user clicks "language selector"
    When user clicks "Spanish flag"
    When user clicks "Caracteristicas"
    Then user sees "Caracteristicas" button is "active"
    Then user sees "Hogar" button is "inactive"
    Then user sees "Cómo funciona" with format "p"
    Then user sees "company logo small"

