# pragma version 0.4.0

# Declare a mapping named 'user_balances' that maps an address to an int128.

user_balances: HashMap[address, int128]

# Create an external function named 'set_balance' that takes an address 'user' and an int128 'balance' as inputs and stores the balance in 'user_balances'.

@external
def set_balance(user: address, balance: int128):

    self.user_balances[user] = balance
