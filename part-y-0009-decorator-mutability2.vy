# pragma version 0.4.0

# Declare a state variable named 'total_balance' of type uint256.

total_balance: uint256

# Create an external view function named 'get_total_balance' that returns a uint256 value stored in the state variable 'total_balance'.

@external
@view
def get_total_balance() -> uint256:

    return self.total_balance
