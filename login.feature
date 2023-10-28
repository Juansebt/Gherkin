@MPV @Android @Web @iOS
Feature: Login

    As a customer,
    I want to login whith email and password,
    so that I can use the application

    Rule: An adult is 18 or older

    Background:
        Given I am at the login page
    
    @BigScreen
    Scenario: Login in with valid credentials 
        # Given I am at the login page
        When I fill the account email textbox with value "example@email.com"
        And I fill the password textbox whith value "password"
        And I click the login button
        Then I shoulb be at the home page
        And  title of home page is "Global Position"
        But Login button is not preseent
            """
            Name: Juan Sebastián
            Amount: 500000
            Loans: 100
            """

    Scenario: Login in with invalid credentials
        # Given I am at the login page
        When I fill the account email textbox whith value "invalidEmail@email.com"
        And I fill de password textbox whith value "passwordInvalid"
        And I click the login button
        Then  a text can not login text appers

    Scenario Outline: Login in with valid credentials
        When I fill the account email textbox with value <email>
        And I fill the password textbox whith value <password>
        And I click the login button
        Then I shoulb be at the home page
        And  title of home page is "Global Position"
        But Login button is not preseent

        Examples:
            | email                   | password         |
            | examexample@email.com   | password         |
            | invalidEmail@email.com  | passwordInvalid  |