# pragma version 0.4.0

# Declare a public variable of type bool with the name 'result'

result: public(bool)

# Create an external function named 'check_conjunction' that takes two bool inputs (x and y), checks if both are true, and stores the result in 'result'

@external
def check_conjunction(x: bool, y: bool):
    self.result = x and y
