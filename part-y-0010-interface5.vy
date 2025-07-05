# pragma version 0.4.0

# Below is a pre-written contract (`Reference.vy`) for reference.
# Developers must create an interface contract that interacts with it.

# Reference.vy
# -----------------------------
# data: public(String[100])
# 
# @external
# def store_data(index: uint256, string_var: String[100]):
#     self.data[index] = string_var
# 
# @external
# @view
# def retrieve_data(index: uint256) -> String[100]:
#     return self.data[index]
# -----------------------------

# Define an interface `DataStorageInterface` that exposes `store_data` (nonpayable) and `retrieve_data` (view).
interface DataStorageInterface:
    def store_data(index: uint256, string_var: String[100]): nonpayable
    def retrieve_data(index: uint256) -> String[100]: view

# Create a public state variable `interface_reference` to store the interface reference.
interface_reference: public(DataStorageInterface)

# Create a constructor with the input named 'reference_addr' to initialize `interface_reference` with an external address.
@deploy
def __init__(reference_addr: address):
    self.interface_reference = DataStorageInterface(reference_addr)

# Create an external function `save_data` that calls `store_data`.
@external
def save_data(index: uint256, string_var: String[100]):
    extcall self.interface_reference.store_data(index, string_var)

# # Create an external view function `fetch_data` that calls `retrieve_data`.
@external
@view
def fetch_data(index: uint256) -> String[100]:
    return staticcall self.interface_reference.retrieve_data(index)
