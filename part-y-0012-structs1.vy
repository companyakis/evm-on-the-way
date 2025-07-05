# pragma version 0.4.0

# Define a struct named 'User' with two attributes:
# - 'user_address' of type 'address'
# - 'user_balance' of type 'uint256'

struct User:
    user_address: address
    user_balance: uint256

# Declare a public variable 'example_user' of type 'User'

example_user: public(User)
