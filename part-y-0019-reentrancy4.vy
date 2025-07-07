# pragma version 0.4.0

# Define two public mapping variable 'collateral' and 'loans', both mapping address to uint256.
collateral: public(HashMap[address, uint256])
loans: public(HashMap[address, uint256])

# Implement a function 'lend_funds' that allows users to deposit Ether as collateral.
@external
@payable
def lend_funds():
    self.collateral[msg.sender] += msg.value

# Implement a '@nonreentrant' function 'borrow_funds' that takes 'borrow_amount' of type uint256 to check and allow users to borrow up to 50% of their collateral.
# Define a local variable 'borrow_power' which is half of the msg.sender collateral
# Assert that loans status is still lower than 'borrow_power', else 'Insufficient collateral'
# Increase 'loans' of msg.sender by 'borrow_amount'
# Use 'send' built-in function to send the 'borrow_amount' to the msg.sender
@external
@nonreentrant
def borrow_funds(borrow_amount: uint256):
    borrow_power: uint256 = self.collateral[msg.sender] // 2
    assert self.loans[msg.sender] < borrow_power, 'Insufficient collateral'
    self.loans[msg.sender] += borrow_amount
    send(msg.sender, borrow_amount)
