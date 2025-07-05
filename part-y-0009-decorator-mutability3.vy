# pragma version 0.4.0

# Declare a state variable named 'contract_balance' of type uint256.

contract_balance: uint256

# Create an external payable function named 'deposit_funds' that accepts Ether and increases the state variable 'contract_balance' by the received amount.

@external
@payable
def deposit_funds():

    self.contract_balance += msg.value
