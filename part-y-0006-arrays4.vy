# pragma version 0.4.0

# Declare a public fixed-size array of type uint256 with the name 'squares' that can hold 5 elements

squares: public(uint256[5])

# Create an external function named 'populate_squares' that populates 'squares' with the value 1 to 5# Assign each slot in the array sequentially with values 1 to 5 (Slot 0 = 1, Slot 1 = 2, ...)

@external
def populate_squares():

    for num: uint256 in range(5):

        self.squares[num] = num + 1

"""
@external
def populate_squares():

    self.squares[0] = 1
    self.squares[1] = 2
    self.squares[2] = 3
    self.squares[3] = 4
    self.squares[4] = 5
"""
