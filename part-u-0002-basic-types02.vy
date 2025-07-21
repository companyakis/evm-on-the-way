# pragma version ^0.4.0

# int types => positive, negative, zero

# from int8 to int256

age: public(int8)

year: public(int16)

profit_or_loss: public(int256)

@deploy
def __init__():

    self.age = 17

    self.year = 2014

    self.profit_or_loss = -2_465_897_658
