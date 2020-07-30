Feature: Home page functionalities
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate through the menus of the page
  
  Background: navigate to home page
    Given the user has browsed to the homepage
  @blocker
  Scenario: confirm header options, logos and elements
    Then user sees "Home" with format "a"
    Then user sees "Vision" with format "a"
    Then user sees "Features" with format "a"
    Then user sees "News" with format "a"
    Then user sees "Contact" with format "a"
    Then user sees "company logo"
    Then user sees "language selector"
  
  @critical      
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
  
  @critical
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
    
  @TKC-2 @trivial
  Scenario: check that menu in windowed mode works properly
 	When I resize window 768 by 1024
 	Then user sees "triple bar menu"
 	Then user clicks "triple bar menu"
 	Then user clicks "Vision"
 	Then user sees "triple bar menu"    
 
  @TKC-3 @minor
  Scenario: check that menu and language in windowed mode work properly
 	When I resize window 768 by 1024
 	Then user sees "triple bar menu"
 	When user clicks "triple bar menu"
 	When user clicks "language selector"
 	Then user sees "German flag"
 	Then user sees "Spanish flag"
 	Then user sees "triple bar menu"    
    
  Scenario: navigate to Vision and back to top confirm logo changes
    Then user sees "company logo"
  	When user clicks "Vision"
    Then user sees "company logo small"
    When user clicks "Back to top"
    Then user sees "company logo"
  
  @blocker  
  Scenario: confirm Apple Store icon and redirection
    Then user sees "Apple Store button"
    When user clicks "Apple Store button"
    Then user sees "Apple logo"
    Then user sees "Kid-Coins" with format "h1"
    Then user sees "The Family App" with format "h2"
   
  @blocker 
  Scenario: confirm Google Store icon and redirection
    Then user sees "Google Store button"
    When user clicks "Google Store button"
    Then user sees "Google logo"
  
  @carouselTests
  Scenario: check that carousel messages circle correctly with next, second screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel next"
    Then user sees "Motivated and happy" with format "h2"
    
  @carouselTests
  Scenario: check that carousel messages circle correctly with next, third screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "More happy moments" with format "h2"

  @minor @carouselTests
  Scenario: check that carousel messages circle correctly with next, back to first screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "More quality time with friends and family" with format "h2"
  
  @carouselTests  
  Scenario: check that carousel messages circle correctly with previous, third screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel previous"
    Then user sees "More happy moments" with format "h2"
    
  @carouselTests  
  Scenario: check that carousel messages circle correctly with previous, second screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "Motivated and happy" with format "h2"
  
  @minor @carouselTests
  Scenario: check that carousel messages circle correctly with previous, back to first screen
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "More quality time with friends and family" with format "h2"
    
  @carouselTests 
  Scenario: check that carousel autoplays
  	Then user sees "More quality time with friends and family" with format "h2"
    Then user sees "Motivated and happy" with format "h2"
    Then user sees "More happy moments" with format "h2"
   	Then user sees "More quality time with friends and family" with format "h2"
    
  


