# pragma version ^0.4.0

num: public(int256)

@external
def set_number(_num: int256):

    self.num = _num


@external
@view
def get_number() -> int256:

    return self.num 
