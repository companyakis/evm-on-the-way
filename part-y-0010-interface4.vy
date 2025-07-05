# pragma version 0.4.0

# Below is a pre-written contract (`Reference.vy`) for reference.
# Developers must create an interface contract that interacts with it.

# Reference.vy
# -----------------------------
# balance: public(uint256)
# 
# @external
# def deposit(amount: uint256):
#     self.balance += amount
# 
# @external
# def withdraw(amount: uint256):
#     assert self.balance >= amount
#     self.balance -= amount
# 
# @external
# @view
# def check_balance() -> uint256:
#     return self.balance
# -----------------------------

# Define an interface `BankInterface` that exposes `deposit` and `withdraw` (both nonpayable), and `check_balance` (view).

interface BankInterface:
    def deposit(amount: uint256): nonpayable
    def withdraw(amount: uint256): nonpayable
    def check_balance() -> uint256: view

# Create a public state variable `interface_reference` to store the interface reference.

interface_reference: public(BankInterface)

# Create a constructor with the input named 'reference_addr' to initialize `interface_reference` with an external address.

@deploy
def __init__(reference_addr: address):
    self.interface_reference = BankInterface(reference_addr)

# Create external and view functions `make_deposit`, `make_withdrawal`, and `get_balance` to interact with the interface.

@external
def make_deposit(amount: uint256):
    extcall self.interface_reference.deposit(amount)

@external
def make_withdrawal(amount: uint256):
    extcall self.interface_reference.withdraw(amount)

@external
@view
def get_balance() -> uint256:
    return staticcall self.interface_reference.check_balance()
