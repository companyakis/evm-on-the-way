# pragma version 0.4.0

# Declare an immutable variable of type uint256 with the name 'INITIAL_SUPPLY'

INITIAL_SUPPLY: immutable(uint256)

# Set its value to 500000 in the constructor
  
@deploy
def __init__():
  
    INITIAL_SUPPLY = 500000
