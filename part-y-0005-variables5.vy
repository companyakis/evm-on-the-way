# pragma version 0.4.0

# Declare a public state variable of type uint256 with the name 'total_supply'

total_supply: public(uint256)

# Declare a public state variable of type address with the name 'owner'

owner: public(address)

# Declare a private state variable of type uint256 with the name 'last_updated'

last_updated: uint256

# Create an external function named 'set_variables' with no input parameters
# Inside 'set_variables', set 'total_supply' to 10 using the 'self' variable
# Set 'owner' to 'msg.sender' using the 'self' variable
# Set 'last_updated' to the current block timestamp using 'block.timestamp'

@external
def set_variables():

    self.total_supply = 10

    self.owner = msg.sender

    self.last_updated = block.timestamp

# Create an external function named 'update_supply' that takes one input parameter:
# - 'new_supply' of type uint256, which represents the new total supply value
# Inside 'update_supply', update 'total_supply' to 'new_supply' using the 'self' variable
# Update 'last_updated' to the current block timestamp using 'block.timestamp'

@external
def update_supply(new_supply: uint256):

    self.total_supply = new_supply

    self.last_updated = block.timestamp
    
# Create an external view function named 'get_last_updated' with no input parameters
# 'get_last_updated' should return a uint256 value
# The function should return the value of 'last_updated' using the 'self' variable

@external
@view
def get_last_updated() -> uint256:

    return self.last_updated
