# pragma version 0.4.0

# Declare a state variable 'stored_data' which maps address to int128.

stored_data: HashMap[address, int128]

# Implement an external function 'store_data' that takes an address 'user' and int128 'amount' as input and updates 'stored_data'.

@external
def store_data(user: address, amount: int128):

    self.stored_data[user] = amount

# Add an external view function 'retrieve_data' that returns the stored amount for a given address.

@external
@view
def retrieve_data(user: address) -> int128:

    return self.stored_data[user]
