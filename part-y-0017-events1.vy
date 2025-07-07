# pragma version 0.4.0

# Define an event named 'TransferEvent' with three parameters:
# - 'sender' address type, indexed
# - 'recipient' address type, indexed
# - 'amount' (uint256)
event TransferEvent:
    sender: indexed(address)
    recipient: indexed(address)
    amount: uint256

# Create a function named 'transfer_funds' that takes an address input 'recipient' and a uint256 input 'amount'.
# Ensure 'amount' is greater than zero using an assert statement and revert with 'Amount must be greater than zero'.
# If the condition passes, log 'TransferEvent' with 'msg.sender', 'recipient', and 'amount'.

@external
def transfer_funds(recipient: address, amount: uint256):

    assert amount > 0, 'Amount must be greater than zero'

    log TransferEvent(msg.sender, recipient, amount)
