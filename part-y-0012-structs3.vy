# pragma version 0.4.0

# Define a struct named 'Transaction' with three attributes:
# - 'sender' of type 'address'
# - 'receiver' of type 'address'
# - 'amount' of type 'uint256'

struct Transaction:
    sender: address
    receiver: address
    amount: uint256

# Declare a public array 'transactions' of type 'Transaction' with fixed size of 100

transactions: public(Transaction[100])

# Declare a public variable 'transaction_count' of type uint256

transaction_count: uint256

# Create an external function 'record_transaction' that takes:
# - 'receiver' (address)
# - 'amount' (uint256)
# The function should push a new 'Transaction' to 'transactions' while noting 'msg.sender' as 'sender'.
# This should also increase 'transaction_count' by 1

@external
def record_transaction(receiver: address, amount: uint256):
    self.transactions[self.transaction_count] = Transaction({sender: msg.sender, receiver: receiver, amount: amount})
    self.transaction_count += 1
