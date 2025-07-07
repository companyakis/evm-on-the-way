# pragma version 0.4.0

# Create an external function named 'validate_transfer' that takes two uint256 inputs: 'amount' and 'limit'.
# The function should use 'assert' to ensure 'amount' does not exceed 'limit', with an error message 'Transfer exceeds limit'.
# If the condition passes, return 'amount'.

@external
def validate_transfer(amount: uint256, limit: uint256) -> uint256:

    assert amount <= limit, 'Transfer exceeds limit'

    return amount
