# pragma version ^0.4.0

# uint types => positive, zero

# from uint8 to uint256

age: public(uint8)

year: public(uint16)

profit_yearly: public(uint256)

@deploy
def __init__():

    self.age = 17

    self.year = 0

    self.profit_yearly = 2_465_897_658
