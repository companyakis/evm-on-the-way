# pragma version 0.4.0

# Create an external pure function named 'find_first_even' that takes a uint256 array of size 6 named 'numbers' as input and returns the first even number found.
# Use a for loop with 'num' of type uint256 as the variable to iterate through the 'numbers' array and apply a conditional check to return the first even number.
# Let the for loop return '0' if no even number in the array

@external
@pure
def find_first_even(numbers: uint256[6]) -> uint256:

    for num: uint256 in numbers:

        if num % 2 == 0:

            return num 
    
    return 0
