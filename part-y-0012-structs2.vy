# pragma version 0.4.0

# Define a struct named 'Product' with two attributes:
# - 'product_id' of type 'uint256'
# - 'product_price' of type 'uint256'

struct Product:
    product_id: uint256
    product_price: uint256

# Declare a public mapping 'product_list' that maps 'uint256' to 'Product'

product_list: public(HashMap[uint256, Product])

# Create an external function 'add_product' that takes:
# - 'product_id' (uint256)
# - 'product_price' (uint256)
# The function should store the product in 'product_list'

@external
def add_product(product_id: uint256, product_price: uint256):

    self.product_list[product_id] = Product({product_id: product_id, product_price:product_price})
