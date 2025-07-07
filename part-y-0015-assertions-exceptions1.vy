# pragma version 0.4.0

# Create an external function named 'validate_input' that takes a uint256 input named 'num'.
# The function should use an 'assert' statement to ensure 'num' is greater than 5, with an error message 'Input must be greater than 5'.

@external
def validate_input(num: uint256):

    assert num > 5, 'Input must be greater than 5'
