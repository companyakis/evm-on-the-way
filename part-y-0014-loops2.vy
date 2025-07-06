# pragma version 0.4.0

# Create an external pure function named 'sum_fixed_array' that takes a uint256 array of size 4 named 'values' as input and returns the total sum of the array elements.
# Include a local variable named 'total' of type uint256 which initializes to '0'
# Use a for loop with 'value' as the variable of type uint256 to iterate through 'values' in the array and accumulate the sum.

@external
@pure
def sum_fixed_array(values: uint256[4]) -> uint256:

    total: uint256 = 0

    for value: uint256 in values:

        total += value

    return total
