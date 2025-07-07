# pragma version 0.4.0

# Declare a public state variable 'amount_balance' of type uint256.

amount_balance: public(uint256)

# Create an external function named 'withdraw' that takes a uint256 input named 'amount'.
# Assert that the 'amount' should be more than 0, else return 'Amount must be greater than zero'.
# Assert that the 'amount' is not less than or equal to 'amount_balance', else 'Insufficient balance'
# If all condition passes, subtract 'amount' from 'self.amount_balance' and send the 'amount' to 'msg.sender' using the `send` function.

@external
def withdraw(amount: uint256):

    assert amount > 0, 'Amount must be greater than zero'

    assert amount <= self.amount_balance, 'Insufficient balance'

    self.amount_balance -= amount

    send(msg.sender, amount)
