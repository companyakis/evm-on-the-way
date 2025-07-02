# pragma version ^0.4.0

my_name: public(String[50])

current_year: public(uint16)


@deploy
def __init__():

    self.my_name = "Mustafa Buyukdereli"

    self.current_year = 2025
