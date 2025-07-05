# pragma version 0.4.0

# Define an external view function named `compare_values` that takes two `uint256` inputs named `a` and `b`.

# The function should return `1` if `a` is greater than `b`, `-1` if `a` is less than `b`, and `0` if they are equal.

@external
@view
def compare_values(a: uint256, b: uint256) -> int256:
    if a > b:
        return 1
    elif a < b:
        return -1
    else:
        return 0
