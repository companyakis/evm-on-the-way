# pragma version 0.4.0

# Define a public uint256 variable 'balance_amount'.

balance_amount: public(uint256)

# Implement a function 'deposit_funds' that is payable and allows users to send Ether to the contract by increasing 'balance_amount'.

@external
@payable
def deposit_funds():
    self.balance_amount += msg.value

# Implement a function 'withdraw_funds' that allows users to withdraw their deposited funds.
# Use the 'raw_call' function to pass empty bytes to send Ether to the caller.
# Protect 'withdraw_funds' with '@nonreentrant' to prevent reentrancy attacks.

@external
@nonreentrant
def withdraw_funds():
    amount: uint256 = self.balance_amount
    self.balance_amount = 0
    raw_call(msg.sender, b"", value=amount)
