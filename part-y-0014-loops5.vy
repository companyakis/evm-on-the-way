# pragma version 0.4.0

# Create an external pure function named 'bounded_increment' that takes two uint256 inputs: 'start' and 'limit'.
# Declare a local variable 'final_value' of type uint256 and initialize it with 'start'
# The function should increment 'start' up to 'limit' using a for loop with 'i' of type uint256.
# The function must have an enforced bound of 4 iterations.
# The function should return the last incremented value named 'final_value'.

@external
@pure
def bounded_increment(start: uint256, limit: uint256) -> uint256:

    final_value: uint256 = start

    for i: uint256 in range(start, limit, bound = 4):

        final_value = i 

    return final_value
