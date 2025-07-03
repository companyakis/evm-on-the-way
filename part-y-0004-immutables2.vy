# pragma version 0.4.0

# Declare an immutable variable of type address with the name 'DEPLOYER_ADDRESS'

DEPLOYER_ADDRESS: immutable(address)

# Set its value to msg.sender in the constructor

@deploy 
def __init__():

    DEPLOYER_ADDRESS = msg.sender
