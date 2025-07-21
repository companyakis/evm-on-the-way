# pragma version ^0.4.0

seller_address: public(address)

owner: public(address)

@deploy
def __init__():

    self.seller_address = 0x7137aB207eA77278d7A5A2e41eeec434247aC1C7

    self.owner = msg.sender
