Feature: Home page carousel options and navigation in Spanish
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate through the carousel options in Spanish
  
  Background: navigate to home page and select Spanish language
    Given the user has browsed to the homepage
    Then user sees "More quality time with friends and family" with format "h2"
    When user clicks "language selector"
    When user clicks "Spanish flag"
    
    
  Scenario: check that carousel messages circle correctly with next, second screen (Spanish)
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
    When user clicks "Carousel next"
    Then user sees "Motivado y feliz" with format "h2"
    
  Scenario: check that carousel messages circle correctly with next, third screen (Spanish)
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "Más momentos felices" with format "h2"

  Scenario: check that carousel messages circle correctly with next, back to first screen (Spanish)
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    When user clicks "Carousel next"
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
    
  Scenario: check that carousel messages circle correctly with previous, third screen (Spanish)
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
    When user clicks "Carousel previous"
    Then user sees "Más momentos felices" with format "h2"
    
  Scenario: check that carousel messages circle correctly with previous, second screen (Spanish)
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "Motivado y feliz" with format "h2"
     
  Scenario: check that carousel messages circle correctly with previous, back to first screen (Spanish)
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    When user clicks "Carousel previous"
    Then user sees "Más tiempo de calidad con amigos y familiares" with format "h2"
