Feature: The login password as a required element of registration and login
  In order my personal data to be stored in the system more secure
  As a customer
  I want the login password as a required element of registration and login

  Scenario: Registration of the new retail customer with the login password as a required field of the form
    Given the login form for the retail customer is open
    And i fill the form with following data:
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
