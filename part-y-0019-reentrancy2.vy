# pragma version 0.4.0

# Define a public mapping variable 'balance_mapping' that maps address to uint256 to track users' deposits.

balance_mapping: public(HashMap[address, uint256])

# Implement an external payable function 'deposit' that allows users to send Ether and update their balance.

@external
@payable
def deposit():
    self.balance_mapping[msg.sender] += msg.value

# Implement a function 'safe_withdraw' that allows users to withdraw all their deposits.
# Create a local variable 'amount' of type uint256 equal to msg.sender balance.
# Use the 'raw_call' function to pass empty bytes to send 'amount' to the caller.
# Protect 'safe_withdraw' with '@nonreentrant' to prevent reentrancy attacks.

@external
@nonreentrant
def safe_withdraw():
    amount: uint256 = self.balance_mapping[msg.sender]
    self.balance_mapping[msg.sender] = 0
    raw_call(msg.sender, b"", value=amount)
