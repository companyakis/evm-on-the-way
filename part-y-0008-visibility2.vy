# pragma version 0.4.0

# Declare a state variable named 'counter' of type uint256

counter: uint256    

# Define an internal function '_set_counter' using the '@internal' decorator that takes a uint256 input named 'amount' and assigns it to a state variable 'counter'.

@internal
def _set_counter(amount: uint256):

    self.counter = amount

# Then, create an external function 'update_counter' that calls '_set_counter' with an input parameter named 'new_amount'.

@external
def update_counter(new_amount: uint256):

    self._set_counter(new_amount)
