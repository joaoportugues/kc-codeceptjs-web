Feature: Business rules
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate through the menus of the page
  
  Background: navigate to home page
    Given the user has browsed to the homepage
 
  Scenario: confirm header options, logo and elements
    Then user sees "Home" with format "a"
    Then user sees "Vision" with format "a"
    Then user sees "Features" with format "a"
    Then user sees "News" with format "a"
    Then user sees "Contact" with format "a"
    Then user sees company logo
    Then user sees language selector
