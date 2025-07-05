# pragma version 0.4.0

# Declare public state variables `base_value` and `multiplier`, both of type uint256.

base_value: public(uint256)
multiplier: public(uint256)

# Implement a constructor function `__init__` that takes two uint256 inputs named `initial_base` and `initial_multiplier`, and initializes `base_value` and `multiplier` respectively.

@deploy
def __init__(initial_base: uint256, initial_multiplier: uint256):

    self.base_value = initial_base
    self.multiplier = initial_multiplier

# Implement a conditional internal function `_compute_result` that takes a uint256 input named `factor` and returns:
#    - `base_value * multiplier * factor` if `factor` is greater than 0.
#    - `base_value + multiplier` otherwise.

@internal
def _compute_result(factor: uint256) -> uint256:
    if factor > 0:
        return self.base_value * self.multiplier * factor

    return self.base_value + self.multiplier

# Implement an external function `calc_computed_result` that takes a uint256 input named `factor` and returns the result of `compute_result`.

@external
def calc_computed_result(factor: uint256) -> uint256:
    return self._compute_result(factor)




