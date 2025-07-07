# pragma version 0.4.0

# Define an event named 'ApprovalEvent' with three parameters:
# - 'owner' address type, indexed
# - 'spender' address type, indexed
# - 'amount' (uint256)

event ApprovalEvent:
    owner: indexed(address)
    spender: indexed(address)
    amount: uint256

# Declare a public mapping 'allowances' that maps an address to another mapping of address to uint256.

allowances: public(HashMap[address, HashMap[address, uint256]])

# Create a function named 'approve_spender' that takes an address input 'spender' and a uint256 input 'amount'.
# Ensure 'amount' is greater than zero using an assert statement and revert with 'Amount must be greater than zero'.
# If the condition passes, store 'amount' in a mapping 'allowances' with key 'msg.sender' -> 'spender'.
# Log 'ApprovalEvent' with 'msg.sender', 'spender', and 'amount'.

@external
def approve_spender(spender: address, amount: uint256):
    assert amount > 0, 'Amount must be greater than zero'
    self.allowances[msg.sender][spender] = amount

    log ApprovalEvent(msg.sender, spender, amount)
