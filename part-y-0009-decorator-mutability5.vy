# pragma version 0.4.0

# Declare a state variable named 'initial_supply' of type uint256.

initial_supply: uint256

# Declare a deploy function named '__init__' that initializes the state variable 'initial_supply' with a uint256 value of 1000000.

@deploy
def __init__():

    self.initial_supply = 1000000

# Create an external view function named 'get_supply' that returns the value of 'initial_supply'.

@external
@view
def get_supply() -> uint256:

    return self.initial_supply
