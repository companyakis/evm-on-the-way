# pragma version 0.4.0

# Create an external function named 'check_age' that takes a uint256 input named 'age' and return String[50].
# The function should use an 'if' statement to check if 'age' is less than 18.
# If true, raise an exception with the error message 'Must be at least 18 years old'.
# Else, return 'Older than 18 years old'.

@external
def check_age(age: uint256) -> String[50]:

    if age < 18:

        raise 'Must be at least 18 years old'

    else:
        
        return 'Older than 18 years old'
