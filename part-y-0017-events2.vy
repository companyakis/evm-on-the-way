# pragma version 0.4.0

# Define an event named 'DepositEvent' with two parameters:
# - 'depositor' address type, indexed
# - 'amount' (uint256)

event DepositEvent:
    depositor: indexed(address)
    amount: uint256

# Declare a public state variable named 'balance_amount' of type uint256.

balance_amount: public(uint256)

# Create a payable function named 'deposit' that takes a uint256 input 'amount'.
# Ensure 'amount' is greater than zero using an assert statement and revert with 'Amount must be greater than zero'.
# If the condition passes, add 'amount' to 'self.balance_amount' and log 'DepositEvent' with 'msg.sender' and 'amount'.

@external
@payable
def deposit(amount: uint256):

    assert amount > 0, 'Amount must be greater than zero'

    self.balance_amount += amount

    log DepositEvent(msg.sender, amount)
