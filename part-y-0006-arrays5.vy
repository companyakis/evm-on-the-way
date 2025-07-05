# pragma version 0.4.0

# Declare a public dynamic array of type address with the name 'whitelisted_addresses' and a maximum size of 5

whitelisted_addresses: public(DynArray[address, 5])

# Create an external function named 'add_whitelisted_address' that takes an address input named 'new_address' and adds it to 'whitelisted_addresses'

@external
def add_whitelisted_address(new_address: address):

    self.whitelisted_addresses.append(new_address)

# Create an external view function named 'is_whitelisted' that takes an address input named 'check_address' and returns true if it exists in 'whitelisted_addresses', otherwise false

@external
@view
def is_whitelisted(check_address: address) -> bool:

    for addr: address in self.whitelisted_addresses:

        if addr == check_address:

            return True 

    return False 
