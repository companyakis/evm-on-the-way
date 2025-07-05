# pragma version 0.4.0

# Declare an external pure function named 'multiply_numbers' that takes two uint256 inputs: 'a' and 'b', and return their product.

@external
@pure
def multiply_numbers(a: uint256, b: uint256) ->uint256:

    return a * b
