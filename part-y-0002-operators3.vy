# pragma version 0.4.0

# Declare a public variable of type bool with the name 'result'

result: public(bool)

# Create an external function named 'negate_bool' that takes a bool input named 'logic', negates it, and stores the result in 'result'

@external
def negate_bool(logic: bool):

    self.result = not logic
