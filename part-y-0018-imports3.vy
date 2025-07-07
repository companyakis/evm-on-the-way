# File structure:
# ├── Counter.vy
# └── MainContract.vy

# Content of 'Counter.vy':
# pragma version 0.4.0

# Define a contract with a private uint256 variable 'count_value' and an external function 'increment_count' that increases 'count_value' by 1

count_value: uint256

@external
def increment_count():
    self.count_value += 1

# In 'MainContract.vy', use 'from . import Counter' syntax to import 'increment_count' and create a function named 'increase_count' that calls 'increment_count'.
# Content of 'MainContract.vy':

from . import Counter

@external
def increase_count():
    Counter.increment_count()
