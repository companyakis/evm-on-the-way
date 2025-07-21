# pragma version ^0.4.0

# ints -> from int8 to int256 -> positive, negative or zero

# uint -> from uint8 to uint256 -> positive or zero

age: public(uint8)

year: public(uint16)

yearly_sales: public(uint256)

diff: public(int32)

total_loss: public(int64)

@deploy
def __init__():

    self.age = 99

    self.year = 2025

    self.yearly_sales = 2_365_456_913

    self.diff = 0

    self.total_loss = -454_321
