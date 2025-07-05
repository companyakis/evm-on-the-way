# pragma version 0.4.0

# Declare a mapping named 'product_prices' that maps a bytes32 to a uint256.

product_prices: HashMap[bytes32, uint256]

# Create an external function named 'set_product_price' that takes a bytes32 'product_id' and a uint256 'price' as inputs and stores the price in 'product_prices'.

@external
def set_product_price(product_id: bytes32, price: uint256):

    self.product_prices[product_id] = price

# Create an external view function named 'get_product_price' that takes a bytes32 'product_id' as input and returns the corresponding price.

@external
@view
def get_product_price(product_id: bytes32) -> uint256:

    return self.product_prices[product_id]
