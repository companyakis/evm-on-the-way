# File structure:
# ├── StorageHelper.vy
# └── MainContract.vy

# Content of 'StorageHelper.vy':
# pragma version 0.4.0

# Define a public storage variable 'stored_value' of type uint256

stored_value: public(uint256)

# Create an external function named 'update_value' that updates the 'stored_value' by taking an input 'new_value' of uint256\n
@external
def update_value(new_value: uint256):
    self.stored_value = new_value

# In 'MainContract.vy', import 'StorageHelper.vy' using an alias 'sh'
# Content of 'MainContract.vy':

import StorageHelper as sh

# Define a public storage variable 'main_contract_stored_value' of type uint256

main_contract_stored_value: public(uint256)

# Create an external function named 'update_stored_value' that takes 'new_value' of type uint256 to update 'main_contract_stored_value'

@external
def update_stored_value(new_value: uint256):
    self.main_contract_stored_value = sh.update_value(new_value)
