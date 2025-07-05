# pragma version 0.4.0

# Declare a dynamic array of type uint256 with the name 'dynamic_numbers' and a maximum size of 10

dynamic_numbers: DynArray[uint256, 10]

# Create an external function named 'add_number' that takes a uint256 input named 'new_number' and appends it to 'dynamic_numbers'

@external
def add_number(new_number: uint256):

    self.dynamic_numbers.append(new_number)
