# pragma version 0.4.0

# Declare an immutable variable of type uint256 with the name 'INITIAL_SUPPLY'

INITIAL_SUPPLY: immutable(uint256)

# Declare an immutable variable of type decimal with the name 'DISCOUNT_RATE'

DISCOUNT_RATE: immutable(decimal)

# Set 'INITIAL_SUPPLY' to 100000 and 'DISCOUNT_RATE' to 10.5 in the constructor

@deploy
def __init__():

    INITIAL_SUPPLY = 100000

    DISCOUNT_RATE = 10.5

# Create an external function named 'calculate_discount' that takes a uint256 input named 'amount' and returns the discounted amount as a uint256
# Create a local variable 'amount_in_decimal' inside 'calculate_discount' and convert 'amount' to decimal
# Create another local variable named 'discounted_amount' to calculate the discount amount as a decimal by multiplying 'amount_in_decimal' with 'DISCOUNT_RATE' and dividing by 100.0
# Finally, convert 'discounted_amount' from decimal to uint256

@external
@view
def calculate_discount(amount: uint256) -> uint256:

    amount_in_decimal: decimal = convert(amount, decimal)

    discounted_amount: decimal = (amount_in_decimal * DISCOUNT_RATE) / 100.0

    return convert(discounted_amount, uint256)
