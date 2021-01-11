# Bank Tech Test

This is the first of the week 10 tech tests at Makers Academy

## Technical Information
This project is written in Ruby, linted using Rubocop and tested using Rspec.  Test coverage is provided by SimpleCov.

## Planning
### Diagrams
![Class diagram](/images/Class_diagram.png)

### User Stories
```
As a user
So that I can check for fraudulent transactions
I want to be able to print an account statement
```
```
As a user
So that I can store my money safely
I want to be able to make a deposit
```
```
As a user
So that I can spend my money
I want to be able to make a withdrawal
```
```
As a user
So that I don't incur overdraft fees
I don't want to be able to withdraw more than my current balance
```

### Notes
* store current balance as a variable
* assume methods for deposit, withdraw and print statement
* is print a separate class?
* store individual transactions in an array of hashes, with each transaction hash having date, credit, debit and balance as key/value pairs
* initial pass at coding this has 'transactions' as an `attr_reader`.  On reflection, that is probably not a good idea - think about how else to access this.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
