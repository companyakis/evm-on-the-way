# pragma version ^0.4.0

seller: public(address)

owner: public(address)


@deploy
def __init__():

    self.seller = 0xb7357f00C2573EE83Ea5F2f1E172e4fF2F6088cE

    self.owner = msg.sender

