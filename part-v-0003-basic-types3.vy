# pragma version ^0.4.0

my_proverb: public(String[52])

my_full_name: public(String[30])

@deploy
def __init__():

    self.my_proverb = "A rolling stone gathers no moss..."

    self.my_full_name = "Mustafa Buyukdereli"

