# pragma version 0.4.0

# Implement an external pure function `add_numbers` that takes two uint256 inputs named `num1` and `num2`, and returns their sum as uint256.
# Ensure the function does not modify the contract state.

@external
@pure
def add_numbers(num1: uint256, num2: uint256) -> uint256:

    return num1 + num2
