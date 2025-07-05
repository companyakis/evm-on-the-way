# pragma version 0.4.0

# Below is a pre-written contract (`Reference.vy`) for reference.
# Developers must create an interface contract that interacts with it.

# Reference.vy
# -----------------------------
# example_amount: public(uint256)
# 
# @external
# def set_example_amount(amount: uint256):
#     self.example_amount = amount
# 
# @external
# @view
# def get_example_amount() -> uint256:
#     return self.example_amount
# -----------------------------

# Define an interface `ExampleInterface` that exposes `set_example_amount` (nonpayable) and `get_example_amount` (view).
  
interface ExampleInterface:
    def set_example_amount(amount: uint256) : nonpayable
    def get_example_amount() -> uint256: view

# Create a public state variable `interface_reference` to store the interface reference.
  
interface_reference: public(ExampleInterface)

# Create a constructor with the input named 'reference_addr' to initialize `interface_reference` with an external address.
  
@deploy 
def __init__(reference_addr: address):
    self.interface_reference = ExampleInterface(reference_addr)

# Create an external function `set_amount` which takes same input name in the interface that calls `set_example_amount`.
  
@external
def set_amount(amount: uint256):
    extcall self.interface_reference.set_example_amount(amount)

# Create an external view function `fetch_amount` that calls `get_example_amount`.
  
@external
@view
def fetch_amount() -> uint256:
    return staticcall self.interface_reference.get_example_amount()





