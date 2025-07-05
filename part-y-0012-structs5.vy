# pragma version 0.4.0

# Define a struct named 'Loan' with three attributes:
# - 'borrower' of type 'address'
# - 'amount' of type 'uint256'
# - 'interest_rate' of type 'uint256'

struct Loan:
    borrower: address
    amount: uint256
    interest_rate: uint256

# Declare a public array 'loan_records' of type 'Loan' with fixed size of 100.

loan_records: public(Loan[100])

# Declare a variable 'loan_count' of type uint256.

loan_count: uint256

# Create an external function 'apply_loan' that takes:
# - 'amount' (uint256)
# - 'interest_rate' (uint256)
# The function should add a new 'Loan' struct to 'loan_records' with 'msg.sender' as 'borrower'
# The function should increase 'loan_count' after adding a new loan.

@external
def apply_loan(amount: uint256, interest_rate: uint256):
    self.loan_records[self.loan_count] = Loan({borrower: msg.sender, amount: amount, interest_rate: interest_rate})
    self.loan_count += 1 

# Create an external view function 'get_loan' that takes:
# - 'index' (uint256)
# The function should return the 'Loan' struct at the given index

@external
@view
def get_loan(index: uint256) -> Loan:
    return self.loan_records[index]
