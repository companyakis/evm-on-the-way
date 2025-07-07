# pragma version 0.4.0

# Declare a public state variable 'amount_balance' of type uint256.

amount_balance: public(uint256)

# Create an external function named 'deposit' that is payable and takes a uint256 input named 'amount'.
# The function should ensure 'amount' is greater than zero using an assert statement.
# If the condition passes, add 'amount' to 'self.amount_balance'.

@external
@payable
def deposit(amount: uint256):

    assert amount > 0, 'Amount must be greater than zero'

    self.amount_balance += amount
