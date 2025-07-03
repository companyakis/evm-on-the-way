# pragma version 0.4.0

# Declare an immutable variable of type uint256 with the name 'INITIAL_SUPPLY'

INITIAL_SUPPLY: immutable(uint256)

# Declare an immutable variable of type address with the name 'DEPLOYER_ADDRESS'

DEPLOYER_ADDRESS: immutable(address)

# Set 'INITIAL_SUPPLY' to 500000 and 'DEPLOYER_ADDRESS' to msg.sender in the constructor

@deploy 
def __init__():

    INITIAL_SUPPLY = 500000

    DEPLOYER_ADDRESS = msg.sender
