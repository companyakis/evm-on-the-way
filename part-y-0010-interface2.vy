# pragma version 0.4.0

# Below is a pre-written contract (`Reference.vy`) for reference.
# Developers must create an interface contract that interacts with it.

# Reference.vy
# -----------------------------
# stored_address: public(address)
# 
# @external
# def set_address(addr: address):
#     self.stored_address = addr
# 
# @external
# @view
# def get_address() -> address:
#     return self.stored_address
# -----------------------------

# Define an interface `AddressInterface` that exposes `set_address` (nonpayable) and `get_address` (view).

interface AddressInterface:
    def set_address(addr: address): nonpayable
    def get_address() -> address: view 

# Create a public state variable `interface_reference` to store the interface reference.

interface_reference: public(AddressInterface)

# Create a constructor with the input named 'reference_addr' to initialize `interface_reference` with an external address.

@deploy
def __init__(reference_addr: address):
    self.interface_reference = AddressInterface(reference_addr)

# Create an external function `update_address` that calls `set_address`.

@external
def update_address(addr: address):
    extcall self.interface_reference.set_address(addr)

# Create an external view function `retrieve_address` that calls `get_address`.

@external
@view
def retrieve_address() -> address:
    return staticcall self.interface_reference.get_address()
