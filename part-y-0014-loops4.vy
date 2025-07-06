# pragma version 0.4.0

# Create an external pure function named 'sum_odd_numbers' that takes a uint256 array of size 5 named 'numbers' as input and returns the sum of only the odd numbers in the array.
# Declare a local variable 'total' of type uint256 and initialize it with '0'
# Create a for loop with the variable 'num' of type uint256 and apply the 'continue' statement to skip even numbers and accumulate only the sum of odd numbers in 'total'.

@external
@pure
def sum_odd_numbers(numbers: uint256[5]) -> uint256:

    total: uint256 = 0

    for num: uint256 in numbers:

        if num % 2 == 0:

            continue
        
        total += num

    return total
