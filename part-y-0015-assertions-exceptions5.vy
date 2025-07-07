# pragma version 0.4.0

# Create an external function named 'safe_division' that takes two uint256 inputs: 'numerator' and 'denominator'.
# The function should use 'assert' to ensure 'denominator' is not zero, with an error message 'Denominator cannot be zero'.
# If the condition passes, return the result of 'numerator' divided by 'denominator'.

@external
def safe_division(numerator: uint256, denominator: uint256) -> uint256:

    assert denominator != 0, 'Denominator cannot be zero'

    return numerator // denominator
