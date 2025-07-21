# pragma version ^0.4.0

my_name: public(String[50])

year: public(uint16)

@external
def set_info(_name: String[50], _year: uint16):

    self.my_name = _name

    self.year = _year


@external
@view
def get_info() -> (String[50], uint16):

    return (self.my_name, self.year)
