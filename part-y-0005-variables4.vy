# pragma version 0.4.0

# Declare a public state variable of type uint256 with the name 'total_supply'

total_supply: public(uint256)

# Declare a public state variable of type address with the name 'owner'

owner: public(address)

# Create an external function 'set_variables' which sets 'total_supply' to 1000000 and 'owner' to msg.sender

@external
def set_variables():

    self.total_supply = 1000000

    self.owner = msg.sender

# Create an external view function named 'get_contract_info' that returns both 'total_supply' and 'owner' as a tuple

@external
@view
def get_contract_info() -> (uint256, address):

    return (self.total_supply, self.owner)
