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
    
  Scenario: navigate to Vision and confirm logo changes
  	When user clicks "Vision"
    Then user sees "company logo small"
    
  Scenario: confirm Apple Store icon and redirection
    Then user sees "Apple Store button"
    When user clicks "Apple Store button"
    Then user sees "Apple logo"
    Then user sees "Kid-Coins" with format "h1"
    Then user sees "The Family App" with format "h2"
    Then user sees "Phil Munzenmaier" with format "a"
   
  Scenario: confirm Google Store icon and redirection
    Then user sees "Google Store button"
    When user clicks "Google Store button"
    Then user sees "Google logo"
    Then user sees "Kid-Coins" with format "h1"
    Then user sees "PEGI 3" with format "div"
    
  Scenario: check that carousel messages circle correctly with next, second screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel next"
    Then user sees "Motivated and happy" with format "h2"
    
  Scenario: check that carousel messages circle correctly with next, third screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "More happy moments" with format "h2"

  Scenario: check that carousel messages circle correctly with next, back to first screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "More quality time with friends and family" with format "h2"
    
  Scenario: check that carousel messages circle correctly with previous, third screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel previous"
    Then user sees "More happy moments" with format "h2"
    
  Scenario: check that carousel messages circle correctly with previous, second screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "Motivated and happy" with format "h2"
     
  Scenario: check that carousel messages circle correctly with previous, back to first screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "More quality time with friends and family" with format "h2"
    
