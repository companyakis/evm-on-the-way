# pragma version ^0.4.0

# Must be compiled with --enable-decimals

premium_ratio: public(decimal)


@deploy
def __init__():

    self.premium_ratio = 0.22
