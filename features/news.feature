Feature: News section of the page
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate to News and read more about it
  
  Background: navigate to News section of the page
    Given the user has browsed to the homepage
      
  Scenario: user is sent to News section with correct information and logos
    When user clicks "News"
    Then user sees "News" button is "active"
    Then user sees "Home" button is "inactive"
    Then user sees "News" with format "p"
    Then user sees "company logo small"
     
  Scenario: user is sent to News and then back home using to top button with correct info and logos
    When user clicks "News"
    Then user sees "News" button is "active"
  	When user clicks "Back to top"
  	Then user sees "Home" button is "active"
  	Then user sees "News" button is "inactive"
  	Then user sees "company logo"
  	
  Scenario: user is sent to News and then back home using home button with correct info and logos
    When user clicks "News"
    Then user sees "News" button is "active"
  	When user clicks "Home"
  	Then user sees "Home" button is "active"
  	Then user sees "News" button is "inactive"
  	Then user sees "company logo"
  	
  Scenario: user is sent to News section with correct information and logos (German)
    When user clicks "language selector"
    When user clicks "German flag"
    When user clicks "Nachrichten"
    Then user sees "Nachrichten" button is "active"
    Then user sees "Zuhause" button is "inactive"
    Then user sees "Nachrichten" with format "p"
    Then user sees "company logo small"
    
  Scenario: user is sent to News section with correct information and logos (Spanish)
    When user clicks "language selector"
    When user clicks "Spanish flag"
    When user clicks "Noticias"
    Then user sees "Noticias" button is "active"
    Then user sees "Hogar" button is "inactive"
    Then user sees "Noticias" with format "p"
    Then user sees "company logo small"
    
  Scenario: user is sent to News and check for more news and check image size
    When user clicks "News"
    When user scrolls to "More"
    When user clicks "More"
    Then user sees image 1 size with width 350
    
  @TKC-5
  Scenario: user is sent to News and check for more, change language to German and check image size
    When user clicks "News"
    When user scrolls to "More"
    When user clicks "More"
    When user clicks "language selector"
    When user clicks "German flag"
    Then user sees image 4 size with width 350
