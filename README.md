# Bank-Account-Project
(OOP/TDD)Mock_Bank_Project
--- 
## Objective
Develope a small scale mock-up bank account project for ruby,to manage 1 - 6 accounts. This project does not focus on security or durability. It is designed to meet a few critical requirements using agile _scenarios_ which describe the BankAccount class should work. Program will is built with following rules stated in the RSpec file.Primary scenarios include the following:

### Requirements

##### has a balance
- Given: a bank account
- When: it has been created
- Then: it is a bank account
    + And: it can report it's balance
    
##### making a deposit
- Given: a bank account
- When: deposit is made
- Then: it's balance increases

##### making a withdrawal
- Given: a bank account
- When: withdrawal is made
- Then: it's balance decreases

##### transferring funds
- Given: a bank account
- When: transfering funds
- Then: it's balance decreases
    + And: other account balance increases

##### minimum balance
- Given: a bank account
- When: minimum balance is set
- Then: argument error should be raised if opening balance is too low
    + And: should **NOT** raise an error if opening balance is over minimum balance
    + And: allows the bank owner to change the minimum balance
--- 
### *Note*
File is work in progress and may be refactored over time.
