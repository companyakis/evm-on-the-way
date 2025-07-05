# pragma version 0.4.0

# Declare a public state variable `stored_value` of type uint256.

stored_value: public(uint256) 

# Implement an external function `set_value` that takes a uint256 input named `new_value` and updates `stored_value` with `new_value`.

@external
def set_value(new_value: uint256):

    self.stored_value = new_value

# Implement an external view function `get_value` that returns `stored_value`.

@external
@view
def get_value() -> uint256:

    return self.stored_value
