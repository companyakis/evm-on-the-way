# pragma version 0.4.0

# Below is a pre-written contract (`Reference.vy`) for reference.
# Developers must create an interface contract that interacts with it.

# Reference.vy
# -----------------------------
# counter: public(uint256)
# 
# @external
# def increment():
#     self.counter += 1
# 
# @external
# @view
# def get_counter() -> uint256:
#     return self.counter
# -----------------------------

# Define an interface `CounterInterface` that exposes `increment` (nonpayable) and `get_counter` (view).

interface CounterInterface:
    def increment(): nonpayable
    def get_counter() -> uint256: view

# Create a public state variable `interface_reference` to store the interface reference.

interface_reference: public(CounterInterface)

# Create a constructor with the input named 'reference_addr' to initialize `interface_reference` with an external address.

@deploy
def __init__(reference_addr: address):
    self.interface_reference = CounterInterface(reference_addr)

# Create an external function `increase_counter` that calls `increment`.

@external
def increase_counter():
    extcall self.interface_reference.increment()

# Create an external view function `read_counter` that calls `get_counter`.

@external
@view
def read_counter() -> uint256:
    return staticcall self.interface_reference.get_counter()
