# pragma version 0.4.0

# Define an event named 'OwnershipTransferred' with two parameters:
# - 'previous_owner' address type, indexed
# - 'new_owner' address type, indexed

event OwnershipTransferred:
    previous_owner: indexed(address)
    new_owner: indexed(address)

# Declare a public state variable 'owner' of type address.

owner: public(address)

# Create a function named 'transfer_ownership' that takes an address input 'new_owner'.
# Ensure 'new_owner' is not the zero address using an assert statement, else 'New owner cannot be zero address'.
# Use the `empty()` built-in function to invoke the zero address.
# Store the previous owner in a new local variable 'previous_owner' of type address
# Store 'new_owner' as the new contract owner.
# Log 'OwnershipTransferred' with the previous and new owner.

@external
def transfer_ownership(new_owner: address):

    assert new_owner != empty(address), 'New owner cannot be zero address'

    previous_owner: address = self.owner 

    self.owner = new_owner

    log OwnershipTransferred(previous_owner, new_owner)
    
