# File structure:
# ├── ethereum
# │   ├── ercs
# │   │   └── IERC20.vy
# └── TokenContract.vy

# Content of 'IERC20.vy':
# pragma version 0.4.0

# Define an interface with an external function 'transfer' that takes an address 'recipient' and uint256 'amount' as inputs and returns a nonpayable bool

interface IERC20:
    def transfer(recipient: address, amount: uint256) -> bool: nonpayable

# In 'TokenContract.vy', import 'IERC20' from 'ethereum.ercs'
# Implement the external 'transfer' function to deduct 'amount' from the sender and add to 'recipient'
# Log the transfer and return the bool
# Content of 'TokenContract.vy':
from ethereum.ercs import IERC20

implements: IERC20

balance_of: public(HashMap[address, uint256])
@external
def transfer(recipient: address, amount: uint256) -> bool:
    self.balance_of[msg.sender] -= amount
    self.balance_of[recipient] += amount
    log IERC20.Transfer(msg.sender, recipient, amount)
    return True
