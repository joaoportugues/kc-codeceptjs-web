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
    Then user sees "Feedback form" with format "p"
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
    Then user sees "Kontaktformular" with format "p"
    Then user sees "company logo small"
    
  Scenario: user is sent to Contact section with correct information and logos (Spanish)
    When user clicks "language selector"
    When user clicks "Spanish flag"
    When user clicks "Contacto"
    Then user sees "Contacto" button is "active"
    Then user sees "Hogar" button is "inactive"
    Then user sees "Contacto" with format "p"
    Then user sees "Formulario de comentarios" with format "p"
    Then user sees "company logo small"
  
  Scenario: user is able to send feedback form
    When user clicks "Contact"
    Then user sees "Feedback form" with format "p"
    When user sends form with email "<email>" and message "This is a test message" "accept gdpr"    
    Then user sees "no form errors"
    Then user sees "Success message"
    
  @TKC-12 @minor 
  Scenario: error handling in the contact from email error
    When user clicks "Contact"
    Then user sees "Feedback form" with format "p"
    When user clicks "email field"
    When user clicks "message field"
    Then user sees "no form errors"
    
   @TKC-13 @normal 
  Scenario Outline: check wrong email formats and proper error messages
    When user clicks "Contact"
    Then user sees "Feedback form" with format "p"
    When user sends form with email "<email>" and message "This is a test message" "accept gdpr"
    Then user sees "<result>"
   
	  Examples:
      |email			 		   |result       				   |
      |jtime @ gmail.com    	   |Email is invalid.              |
      |					    	   |Email is invalid.              |
      |jtime@....  				   |Email is invalid.     		   |
      |jtime@gmail com 			   |Email is invalid.              |
      |jtime 123@gmail.com 		   |Email is invalid.              |
      |@gmail.com 				   |Email is invalid.              |
      |jtime002@gmail			   |Email is invalid.              |
      |jtime002@gmail.com          |Your message has been sent.    |
    
  @newTest    
  Scenario: user cannot send form without filling in message
    When user clicks "Contact"
    Then user sees "Feedback form" with format "p"
    When user sends form with email "jtime002@gmail.com" and message "" "accept gdpr"
    Then user sees "no success message"
    Then user sees send button is disabled
   
  @newTest  
  Scenario: user cannot send form without accepting gdpr
    When user clicks "Contact"
    Then user sees "Feedback form" with format "p"
    When user sends form with email "jtime002+1@gmail.com" and message "This is a test message" "dont accept gdpr"
    Then user sees "no success message"
    Then user sees send button is disabled

