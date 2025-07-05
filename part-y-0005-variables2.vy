# pragma version 0.4.0

# Create an external 'get_local_value' function which has a local variable of type uint256 with the name 'local_value' and returns 123456

@external
@pure
def get_local_value() -> uint256:

    local_value: uint256 = 123456

    return local_value
