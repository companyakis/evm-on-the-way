# pragma version 0.4.0

# Declare a public state variable of type uint256 with the name 'total_supply'

total_supply: public(uint256)

# Create an external function named 'set_total_supply' that takes a uint256 input named 'amount' and sets 'total_supply' to the input value
  
@external
def set_total_supply(amount: uint256):
  
    self.total_supply = amount
