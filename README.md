# Bank Tech Test

This is the first of the week 10 tech tests at Makers Academy.

My initial planning involved translating the specification into user stories, using a class diagram to plan out the classes required, and making some additional written notes.

My initial set-up worked well for the Account class, but when I came to try to print out the statement I found that I was doing additional translation to retrieve the transaction data from the hashes.  I therefore changed to storing the transactions in an array of arrays.

To allow for the rounding errors implicit in the integer class, I stored amounts in pence rather than pounds.  I then translated to pounds for the statement view.  Storing the amounts as integers rather than strings would allow for bank interest to be calculated easily on the balances, if such an extension was required.

Though it was not stipulated in the specification, with further time I would update the withdrawal method to ensure that withdrawal was only possible if sufficient funds were in the account.

A further extension would be for each account to be generated with an account number, so that a specific account could be accessed.

## Technical Information
This project is written in Ruby, linted using Rubocop and tested using Rspec.  Test coverage is provided by SimpleCov.

## Test Coverage
![Test coverage](/images/Test_coverage.png)

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

### Planning Notes
* store current balance as a variable
* assume methods for deposit, withdraw and print statement
* need a separate class for Print
* store transactions in an array of hashes, with each transaction hash having date, credit, debit and balance as key/value pairs.

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
