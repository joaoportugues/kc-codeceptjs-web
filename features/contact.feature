Feature: Contact section of the page
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate to Contact and read more about it
  
  Background: navigate to Contact section of the page
    Given the user has browsed to the homepage
      
  Scenario: user is sent to Contact section with correct information and logos
    When user clicks "Contact"
    Then user sees "Contact" button is "active"
    Then user sees "Home" button is "inactive"
    Then user sees "Contact" with format "p"
    Then user sees "company logo small"
     
  Scenario: user is sent to Contact and then back home using to top button with correct info and logos
    When user clicks "Contact"
    Then user sees "Contact" button is "active"
  	When user clicks "Back to top"
  	Then user sees "Home" button is "active"
  	Then user sees "Contact" button is "inactive"
  	Then user sees "company logo"
  	
  Scenario: user is sent to Contact and then back home using home button with correct info and logos
    When user clicks "Contact"
    Then user sees "Contact" button is "active"
  	When user clicks "Home"
  	Then user sees "Home" button is "active"
  	Then user sees "Contact" button is "inactive"
  	Then user sees "company logo"
  	
  Scenario: user is sent to Contact section with correct information and logos (German)
    When user clicks "language selector"
    When user clicks "German flag"
    When user clicks "Kontakt"
    Then user sees "Kontakt" button is "active"
    Then user sees "Zuhause" button is "inactive"
    Then user sees "Kontakt" with format "p"
    Then user sees "company logo small"
    
  Scenario: user is sent to Contact section with correct information and logos (Spanish)
    When user clicks "language selector"
    When user clicks "Spanish flag"
    When user clicks "Contacto"
    Then user sees "Contacto" button is "active"
    Then user sees "Hogar" button is "inactive"
    Then user sees "Contacto" with format "p"
    Then user sees "company logo small"

