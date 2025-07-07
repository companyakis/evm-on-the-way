# pragma version 0.4.0

# Define public uint256 variable 'total_donations'.
total_donations: public(uint256)

# Define a public mapping variable 'donors' that maps address to a boolean.
donors: public(HashMap[address, bool])
# Define a public mapping variable 'donor_points' that maps address to uint256.
donor_points: public(HashMap[address, uint256])
# Implement an external payable function 'donate' that allows users to send Ether to the contract, records in 'total_donations' and update 'self.donors' if they successfully donated.
# Award 100 points to donors who donated
@external
@payable
def donate():
    self.total_donations += msg.value
    self.donors[msg.sender] = True
    self.donor_points[msg.sender] += 100
# Implement an external function 'claim_points' that allows users to claim their points as Ether.
# Ensure 'claim_points' is protected by '@nonreentrant' to prevent reentrancy attacks.
# Assert that 'donors' is true, else 'No donations made'
# Define a local variable 'points' of type uint256 to the 'donor_points'
# Assert that 'points' is more than 0, else 'No points to claim'
# Reset points to 0 before sending Ether
# Use the built-in function 'send' to send Ether equivalent to point to 'msg.sender'
@external
@nonreentrant
def claim_points():
    assert donors[msg.sender], 'No donations made'
    points: uint256 = self.donor_points[msg.sender]
    assert points > 0, 'No points to claim'
    self.donor_points[msg.sender] = 0
    send(msg.sender, points)
