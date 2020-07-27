Feature: Business rules
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate through the menus of the page
  
  Background: navigate to home page
    Given the user has browsed to the homepage
 
  Scenario: confirm header options, logos and elements
    Then user sees "Home" with format "a"
    Then user sees "Vision" with format "a"
    Then user sees "Features" with format "a"
    Then user sees "News" with format "a"
    Then user sees "Contact" with format "a"
    Then user sees "company logo"
    Then user sees "language selector"
    
  Scenario: change language to German and confirm options, logos and elements
  	When user clicks "language selector"
  	Then user sees "German flag"
  	Then user sees "Spanish flag"
  	When user clicks "German flag"
  	Then user sees "German flag active"
  	Then user sees "Zuhause" with format "a"
  	Then user sees "Vision" with format "a"
  	Then user sees "Wie funktioniert's" with format "a"
  	Then user sees "Nachrichten" with format "a"
  	Then user sees "Kontakt" with format "a"
    Then user sees "company logo"
    
  Scenario: change language to Spanish and confirm options, logos and elements
  	When user clicks "language selector"
  	Then user sees "German flag"
  	Then user sees "Spanish flag"
  	When user clicks "Spanish flag"
  	Then user sees "Spanish flag active"
  	Then user sees "Hogar" with format "a"
  	Then user sees "Visio" with format "a"
  	Then user sees "Caracteristicas" with format "a"
  	Then user sees "Noticias" with format "a"
  	Then user sees "Contacto" with format "a"
    Then user sees "company logo"