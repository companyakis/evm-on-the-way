# pragma version 0.4.0

# Create an external function named 'secure_send' that is payable and takes an address input named 'recipient', a uint256 input named 'amount', and a uint256 input named 'gas_limit'.
# Assert 'amount' is greater than zero else 'Amount must be greater than zero'.
# If the condition passes, send 'amount' to 'recipient' with 'gas_limit'.

@external
@payable
def secure_send(recipient: address, amount: uint256, gas_limit: uint256):

    assert amount > 0, 'Amount must be greater than zero'

    send(recipient, amount, gas = gas_limit)
