# pragma version ^0.4.0

# Must be compiled with --enable-decimals

profit_rate: public(decimal)

@deploy
def __init__():

    self.profit_rate = 24.17
