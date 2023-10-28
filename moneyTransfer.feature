Feature: moneyTransfer

    As a bank customer,
    I want to tranfer funds between my accounts,
    So that I can fund my credit card

    Background: 
        Given customer is at the tranfer page

    Scenario: Customer has enough money
        # Given customer is at the transfer page
        Given that the bank account has enough money
        When customer request tranfer money between his accounts
        Then the money is tranferred to the second account

    Scenario: customer don't have enough money
        # Given Customer is at the transfer page
        Given that the bank account has not enough money
        When customer request tranfer money between his accounts
        Then the moneyis no tranferred to the second account 

    Scenario Outline: Customer has enough money
        Given that the bank account has <moneyFirstAccount>
        When customer request tranfer <money> between his accounts
        Then the money is tranferred to the second account

        Examples:
            | moneyFirstAccount | money |
            | 1000              | 10    | 
            | 100               | 50    | 