# pragma version 0.4.0

# Declare a public state variable 'amount_balance' of type uint256.

amount_balance: public(uint256)

# Create an external function named 'withdraw' that takes a uint256 input named 'amount'.
# The function should use an 'assert' statement to ensure 'amount' is less than or equal to 'self.amount_balance', with an error message 'Insufficient balance'.
# If the condition passes, subtract 'amount' from 'self.amount_balance'.

@external
def withdraw(amount: uint256):

    assert amount <= self.amount_balance, 'Insufficient balance'

    self.amount_balance -= amount
