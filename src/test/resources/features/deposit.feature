Feature: deposit
    As a customer
    I want to deposit money into my account using an ATM

    Background:
        Given a customer with id 1 and pin 111 with balance 200 exists
        When I login to ATM with id 1 and pin 111

    Scenario: Deposit into my account
        When I deposit 1000 into my account balance
        Then my account balance is 1200

    Scenario Outline: Deposit into my account
        When I deposit <amount> into my account balance
        Then my account balance is <balance>
        Examples:
            | id     | amount   |  balance |
            | 1      |  1000    |   1200   |