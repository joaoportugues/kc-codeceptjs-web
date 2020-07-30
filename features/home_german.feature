Feature: Home page carousel options and navigation in German
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate through the carousel options in German
  
  Background: navigate to home page and select German language
    Given the user has browsed to the homepage
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "language selector"
    When user clicks "German flag"
    Then user refreshes page
    
  @carouselTests 
  Scenario: check that carousel messages circle correctly with next, second screen (German)
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    When user clicks "Carousel next"
    Then user sees "Motiviert und macht glücklich" with format "h2"
  @carouselTests  
  Scenario: check that carousel messages circle correctly with next, third screen (German)
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "Mehr Glücksmomente" with format "h2"

  @minor @carouselTests
  Scenario: check that carousel messages circle correctly with next, back to first screen (German)
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
  
  @carouselTests
  Scenario: check that carousel messages circle correctly with previous, third screen (German)
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    When user clicks "Carousel previous"
    Then user sees "Mehr Glücksmomente" with format "h2"
    
 @carouselTests 
  Scenario: check that carousel messages circle correctly with previous, second screen (German)
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "Motiviert und macht glücklich" with format "h2"
  
  @minor @carouselTests  
  Scenario: check that carousel messages circle correctly with previous, back to first screen (German)
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"

  @carouselTests 
  Scenario: check that carousel autoplay in German
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    Then user sees "Motiviert und macht glücklich" with format "h2"
    Then user sees "Mehr Glücksmomente" with format "h2"
    Then user sees "Mehr Quality Time mit Friends und Family" with format "h2"
    