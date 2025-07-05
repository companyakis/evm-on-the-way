# pragma version 0.4.0

# Define a state variable 'balances' which maps address to uint256.

balances: HashMap[address, uint256]

# Implement an external function 'deposit_funds' that allows an address to store a uint256 amount.

@external
def deposit_funds(amount: uint256):

    self.balances[msg.sender] += amount

# Add an internal function '_validate_withdrawal' using the '@internal' decorator that asserts to check if a user has sufficient balance before withdrawing, else reverting with "Insufficient Balance".

@internal
def _validate_withdrawal(user: address, amount: uint256):

    assert self.balances[user] >= amount, "Insufficient balance"

# Finally, create an external function 'withdraw_funds' that takes a uint256 'amount', calls '_validate_withdrawal' with 'msg.sender' and 'amount', and updates the balance accordingly.

@external
def withdraw_funds(amount: uint256):

    self._validate_withdrawal(msg.sender, amount)

    self.balances[msg.sender] -= amount
