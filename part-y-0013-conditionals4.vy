# pragma version 0.4.0

# Declare a public state variable 'threshold' of type uint256

threshold: public(uint256)

# Define an external function named `set_threshold` that takes a `uint256` input named `new_threshold`.
# Store `new_threshold` in the `threshold` variable.

@external
def set_threshold(new_threshold: uint256):
    self.threshold = new_threshold

# Define an external view function named `check_threshold` that takes a `uint256` input named `amount`.
# The function should return `True` if `amount` is greater than `threshold`, otherwise `False`.

@external
@view
def check_threshold(amount: uint256) -> bool:
    if amount > self.threshold:
        return True
    else:
        return False
