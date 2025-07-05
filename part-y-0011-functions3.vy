# pragma version 0.4.0

# Declare a state variable `count` of type uint256.

count: public(uint256)

# Implement an external function `increment` that increases `count` by 1.

@external
def increment():

    self.count += 1

# Implement an external function `decrement` that decreases `count` by 1.

@external
def decrement():

    self.count -= 1

# Implement an external view function `get_count` that returns `count`.

@external
@view
def get_count() -> uint256:

    return self.count
