# pragma version 0.4.0

# Declare a public variable of type uint256 with the name 'result'

result: public(uint256)

# Create an external function named 'multiply_numbers' that takes two uint256 inputs (x and y), multiplies them, and stores the result in 'result'

@external
def multiply_numbers(x: uint256, y: uint256):

    self.result = x * y
