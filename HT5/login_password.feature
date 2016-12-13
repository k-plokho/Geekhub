Feature: The login password as a required element of registration and login
  In order my personal data to be stored in the system more secure
  As a customer
  I want the login password as a required element of registration and login

  Scenario: Registration of the new retail customer with the login password as a required field of the form
    Given the registration form for the retail customer is open
    And I fill the form with following data:
      | Last name/Фамилия         | Паркер                    |
      | First name/Имя            | Питер                     |
      | Patronym/Отчество         | Питерович                 |
      | Phone number/Телефон      | +38 (066) 666 66 66       |
      | Email                     | chelovekpauk404@gmail.com |
      | Password/Пароль           | chelovekpauk404           |
      | Region/Область            | Черкасская обл.           |
      | City/Город                | Черкассы                  |
      | Delivery company/Доставка | Новая Почта               |
      | Depot №/№ склада          | 7                         |
    And I click the button 'Submit'
    And the message concerning the confirmation of the email address is displayed
    When I confirm the email address by following the link in the mail sent by the system
    Then the message concerning the successful registration is displayed
    And page 'Личный кабинет' is automatically opened
    And I am registered and logged in as a retail customer
    
  Scenario: The logging in
    Given I am previously registered in the system
    But now I am not logged in 
    Then the login form is open
    And I fill the form with following data:
      | Email            | chelovekpauk404@gmail.com | 
      | Account password | chelovekpauk404           |
    When I click the button 'Submit'
    Then the page 'Личный кабинет' is displayed
    And I am successfully logged in the the system
  
  Scenario: The password recovery
    Given I am previously registered in the system
    But now I am not logged in
    And I forgot the password
    Then the password recovery form is open
    And I fill the form with the following data:
      | Email | chelovekpauk404@gmail.com
    And I click the button 'Востановить пароль'
    If
    
