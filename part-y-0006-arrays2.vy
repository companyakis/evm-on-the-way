# pragma version 0.4.0

# Declare a fixed-size array of type address with the name 'trusted_addresses' that can hold 2 elements

trusted_addresses: address[2]

# Create an external function named 'set_trusted_addresses' that takes two address inputs named 'addr1' and 'addr2' and stores them in 'trusted_addresses'

@external
def set_trusted_addresses(addr1: address, addr2: address):

    self.trusted_addresses = [addr1, addr2]
