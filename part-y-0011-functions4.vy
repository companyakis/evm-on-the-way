# pragma version 0.4.0

# Declare a public state variable `initial_value` of type uint256.

initial_value: public(uint256)

# Implement a constructor function `__init__` that takes a uint256 input named `amount` and initializes `initial_value` with `amount`.

@deploy
def __init__(amount: uint256):

    self.initial_value = amount

# Implement an external view function `get_initial_value` that returns `initial_value`.

@external
@view
def get_initial_value() -> uint256:

    return self.initial_value
