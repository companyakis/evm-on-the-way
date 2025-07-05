# pragma version 0.4.0

# Declare a public mapping named "user_balances" which maps address to uint256

balances: public(HashMap[address, uint256])

# Define an external function named `set_balance` that takes an `address` input named `user` and a `uint256` input named `amount`.
# Store `amount` in a mapping named `balances`, where `user` is the key.

@external
def set_balance(user: address, amount: uint256):
    self.balances[user] = amount

# Define an external view function named `assess_risk` that takes an `address` input named `user`.
# The function should return `High` if the user's balance is 1000 or more, `Medium` if between 500-999, and `Low` otherwise.

@external
@view
def assess_risk(user: address) -> String[6]:
    if self.balances[user] >= 1000:
        return "High"
    elif self.balances[user] >= 500:
        return "Medium"
    else:
        return "Low"
