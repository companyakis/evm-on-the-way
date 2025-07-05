# pragma version 0.4.0

# Declare a public state variable of type address with the name 'owner'

owner: public(address)

# Create an external function named 'set_owner' that sets 'owner' to msg.sender

@external
def set_owner():

    self.owner = msg.sender

# Create an external view function named 'get_owner' that returns the value of 'owner'

@external
@view
def get_owner() -> address:

    return self.owner
