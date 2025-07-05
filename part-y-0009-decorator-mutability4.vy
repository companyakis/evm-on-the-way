# pragma version 0.4.0

# Declare a state variable named 'contract_balance' of type uint256.

contract_balance: uint256

# Create an external nonpayable function named 'withdraw_funds' that takes a uint256 named 'amount' which allows an external user to withdraw a specified amount from 'contract_balance' if sufficient balance is available.
# This function should use 'assert' to check prior to decreasing 'amount' from 'contract_balance', else revert with 'Insufficient funds'.

@external
@nonpayable
def withdraw_funds(amount: uint256):

    assert self.contract_balance >= amount, 'Insufficient funds'

    self.contract_balance -= amount
