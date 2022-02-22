# Bank Tech Test

To Use:
Clone this repo: https://github.com/helloecho12345/bank_tech_test
  $ git clone https://github.com/helloecho12345/bank_tech_test

Install dependencies
  $ cd bank_tech_test
  $ bundle install


## Specification

### Requirements
You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

### User Stories

As a client,
so that I can keep track of my finances,
I would like to have a bank account.

As a client,
so that I can save money,
I would like to make a deposit to my account.

As a client,
so that I can pay a bill,
I would like to make a withdrawal from my account.

As a client,
so that I can check my transactions,
I would like to print my bank statement.


### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2023
And a deposit of 2000 on 13-01-2023
And a withdrawal of 500 on 14-01-2023
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00


#### Self-assessment
Once you have completed the challenge and feel happy with your solution, here's a form to help you reflect on the quality of your code: https://docs.google.com/forms/d/1Q-NnqVObbGLDHxlvbUfeAC7yBCf3eCjTmz6GOqC9Aeo/edit