# pragma version 0.4.0

# Declare a public variable of type bool with the name 'result'

result: public(bool)

# Create an external function named 'check_equality' that takes two uint256 inputs (x and y), checks if they are equal, and stores the result in 'result'

@external
def check_equality(x: uint256, y: uint256):

    self.result = x == y
