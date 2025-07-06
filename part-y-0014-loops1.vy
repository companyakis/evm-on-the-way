# pragma version 0.4.0

# Create an external pure function named 'sum_range_of_nine' that takes no arguments and return uint256
# Include a local variable named 'total' of type uint256 which initializes to '0'
# Use a for loop to iterate through of 9 and return the sum.

@external
@pure
def sum_range_of_nine() -> uint256:

    total: uint256 = 0

    for i: uint256 in range(9):

        total += i 

    return total 
