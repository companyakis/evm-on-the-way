# File structure:
# ├── TokenInterface.vy
# └── MainContract.vy

# Content of 'TokenInterface.vy':
# pragma version 0.4.0

# Define an interface with an external function 'balance_of' that takes an address input 'user_address' and returns a view uint256

interface TokenInterface:
    def balance_of(user_address: address) -> uint256: view

# In 'MainContract.vy', import 'TokenInterface' and create a function named 'check_balance' that calls 'balance_of' for a given address 'target_address' and returns the uint256.
# Content of 'MainContract.vy':

import TokenInterface

@external
@view
def check_balance(target_address: address) -> uint256:
    return TokenInterface.balance_of(target_address)
