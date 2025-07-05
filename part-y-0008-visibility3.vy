# pragma version 0.4.0

# Create an internal function '_compute_sum' using the '@internal' decorator that takes two uint256 inputs, 'a' and 'b', and returns their sum.

@internal
def _compute_sum(a: uint256, b: uint256) -> uint256:

    return a + b

# Implement an external function 'calculate_total' that calls '_compute_sum' and returns the result.

@external
def calculate_total(a: uint256, b: uint256) -> uint256:

    return self._compute_sum(a, b)
