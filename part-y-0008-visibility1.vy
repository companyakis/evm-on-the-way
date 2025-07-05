# pragma version 0.4.0

# Declare a state variable named 'deployed_message' of type String with length of 50

deployed_message: String[50]

# Declare a deploy-time function '__init__' using '@deploy' decorator.
# Inside the function, initialize a state variable 'deployed_message' with the value 'Contract Deployed'.

@deploy
def __init__():

    self.deployed_message = 'Contract Deployed'
