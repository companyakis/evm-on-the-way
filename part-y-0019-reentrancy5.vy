# pragma version 0.4.0

# Define a public mapping variable 'balances' which maps addresses to uint256.
balances: public(HashMap[address, uint256])

# Create a function 'batch_withdraw' that:
# - Takes a dynamic array of addresses 'recipients' with a size of 5.
# - Use a for loop with variable 'i' of type uint256 to loop through the function
# - Define local variable 'recipient' of type address which maps to 'recipients'
# - Define local variable 'amount' of type uint256 which maps 'recipient' to 'balances'
# - Assert that amount must be more than 0, else 'Invalid batch withdraw'
# - Update 'balances' to 0 to ensure nonreentrancy attacks
# - Use built-in send function to send the 'amount' to every 'recipient'
@external
@nonreentrant
def batch_withdraw(recipients: DynArray [address, 5]):
    
    for i: uint256 in range(5):
        recipient: address = recipients[i]
        amount: uint256 = self.balances[recipient]
        assert amount > 0, 'Invalid batch withdraw'
        self.balances[recipient] = 0
        send(recipient, amount)
