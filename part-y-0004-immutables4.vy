# pragma version 0.4.0

# Declare an immutable variable of type Bytes[32] with the name 'SECRET_HASH'

SECRET_HASH: immutable(Bytes[32])

# Declare an immutable variable of type String[20] with the name 'CONTRACT_NAME'

CONTRACT_NAME: immutable(String[20])

# Set 'SECRET_HASH' to 0xabc123456789abcdef123456789abcdef123456789abcdef123456789abcdef and 'CONTRACT_NAME' to 'ImmutableVyper' in the constructor

@deploy
def __init__():

    SECRET_HASH = 0xabc123456789abcdef123456789abcdef123456789abcdef123456789abcdef

    CONTRACT_NAME = "ImmutableVyper"
