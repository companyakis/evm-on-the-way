# pragma version 0.4.0

# Define a view function named `is_even` that takes a `uint256` input named `number`.
# Using a modulus operator, the function should return `True` if `number` is even, otherwise `False`.

@external
@view
def is_even(number: uint256) -> bool:

    if number % 2 == 0:
        return True 
    else:
        return False
