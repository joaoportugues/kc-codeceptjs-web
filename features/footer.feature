Feature: Footer section of the page
  In order to learn about Kid Coins
  As a user
  I want to be able to navigate to footer and open the links
  
  Background: navigate to Footer section of the page
    Given the user has browsed to the homepage
    When user scrolls to "bottom"
      
  Scenario: user navigates to footer section of the page and sees all information links
    Then user sees "Help & Support" with format "h6"
    Then user sees "Products" with format "h6"
    Then user sees "Privacy Statement" with format "a"
    Then user sees "Terms & Conditions" with format "a"
    Then user sees "iOS mobile application" with format "a"
    Then user sees "Android mobile application" with format "a"
    
  Scenario: user navigates to footer section of the page and sees all information links in German
    When user clicks "language selector"
    When user clicks "German flag"
    Then user sees "Hilfe & Support" with format "h6"
    Then user sees "Produkte" with format "h6"
    Then user sees "Datenschutzerklärung" with format "a"
    Then user sees "AGB" with format "a"
    Then user sees "iOS mobile Anwendung" with format "a"
    Then user sees "Android mobile Anwendung" with format "a"

  Scenario: user navigates to footer section of the page and sees all information links in Spanish
    When user clicks "language selector"
    When user clicks "Spanish flag"
    Then user sees "Ayuda y soporte técnico" with format "h6"
    Then user sees "Productos" with format "h6"
    Then user sees "Declaración de privacidad" with format "a"
    Then user sees "Términos y condiciones" with format "a"
    Then user sees "Aplicación móvil iOS" with format "a"
    Then user sees "Aplicación móvil de Android" with format "a"

  Scenario: user navigates to footer section and opens Privacy Statement 
    When user clicks "Privacy Statement"
    When user scrolls to "top"
    Then user sees "Datenschutzerklärung" with format "p"
     
  Scenario: user navigates to footer section and opens Terms & Conditions 
    When user clicks "Terms & Conditions"
    When user scrolls to "top"
    Then user sees "Datenschutzerklärung der Kid-Coins App" with format "p"
    
  @TKC-6 @firefoxBugOnly
  Scenario: user navigates to footer section and opens Terms & Conditions and then Privacy Statement
    When user clicks "Terms & Conditions"
    Then user clicks Privacy Statement and footer is still displayed
    
  @TKC-7
  Scenario: user navigates to footer section and opens Privacy Statement and then presses to top button
    When user clicks "Privacy Statement"
    When user clicks "back to top"
    Then user sees "company logo"
    
  @TKC-8
  Scenario: user navigates to footer section and opens Terms & Conditions and then Home to get back to the main page
    When user clicks "Privacy Statement"
    When user clicks "Home"
    Then user sees "company logo"
    
  @TKC-9
  Scenario: user navigates to footer section and opens Privacy Statement and then Home to get back to the main page
    When user clicks "Terms & Conditions"
    When user clicks "Home"
    Then user sees "company logo"
    
  @blocker
  Scenario: confirm Apple Store icon and redirection
    When user clicks "iOS mobile application"
    Then user sees "Apple logo"
    Then user sees "Kid-Coins" with format "h1"
    Then user sees "The Family App" with format "h2"
   
  @blocker
  Scenario: confirm Google Store icon and redirection
    When user clicks "Android mobile application"
    Then user sees "Google logo"



