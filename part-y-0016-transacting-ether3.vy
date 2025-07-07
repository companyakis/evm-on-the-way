# pragma version 0.4.0

# Create an external function named 'transfer_ether' that is payable and takes an address input named 'recipient' and a uint256 input named 'amount'.
# Assert 'amount' is greater than zero else 'Amount must be greater than zero'.
# If the condition passes, send 'amount' to 'recipient'.

@external 
@payable
def transfer_ether(recipient: address, amount: uint256):

    assert amount > 0, 'Amount must be greater than zero'

    send(recipient, amount)
