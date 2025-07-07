# File structure:
# ├── MathLibrary.vy
# └── MainContract.vy

# Content of 'MathLibrary.vy':
# pragma version 0.4.0

# Define an external pure function named 'multiply' that takes two uint256 inputs 'num1' and 'num2' and returns their product

@external
@pure
def multiply(num1: uint256, num2: uint256) -> uint256:

    return num1 * num2

# In 'MainContract.vy', import 'MathLibrary' and create a function named 'use_multiply' that calls 'multiply' with two uint256 arguments 'value1' and 'value2' and returns the result.
# Content of 'MainContract.vy':

import MathLibrary

@external
def use_multiply(value1: uint256, value2: uint256) -> uint256:

    return MathLibrary.multiply(value1, value2)
