# pragma version 0.4.0

# Declare a mapping named 'user_ages' that maps an address to a uint8.

user_ages: HashMap[address, uint8]

# Create an external function named 'register_age' that takes an address 'user' and a uint8 'age' as inputs and stores the age in 'user_ages'.

@external 
def register_age(user: address, age: uint8):

    self.user_ages[user] = age

# Create an external view function named 'is_adult' that takes an address 'user' as input, checks if the user is equals to or above 18 years old and returns a bool result.

@external
@view
def is_adult(user: address) -> bool:

    return self.user_ages[user] >= 18
