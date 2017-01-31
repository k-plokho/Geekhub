Feature: The mailing list (newsletter) about discounts and some other useful news of the shop.
  In order to know about shop's discounts
  As a customer 
  I want to subscribe to the shop's newsletter
  
  Scenario: Subscribing to the newsletter
    Given the main page is opened
    And I click the button 'Подписаться на новости магазина'
    Then the form is displayed that should be filled with following data:
      | email | chelovekpauk404@gmail.com |
    When I submit the form 
    Then the message concerning the successful subscription is displayed
    And the newsletter of the present week is sent to my mailbox
    
  Scenario: Canceling the subscription via mailbox
    Given I am in my mailbox using following data for entering it:
      | email    | chelovekpauk404@gmail.com |
      | Password | chelovekpauk404           |
    And the newsletter of the shop is opened
    When I click the button 'Отменить подписку' at the end of the letter
    Then the page with the message concerning the successful cancellation of the subscription is displayed
    
    
    
