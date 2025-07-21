# pragma version ^0.4.0

# Must be compiled with --enable-decimals

founder: public(String[50])

@deploy
def __init__():

    self.founder = "Mustafa Buyukdereli"
