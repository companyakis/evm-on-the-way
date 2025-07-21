# pragma version ^0.4.0

@external
@pure
def add_or_mult(a: int256, b: int256, c: int256) -> (int256, int256):

    return (a + b + c, a * b * c)
