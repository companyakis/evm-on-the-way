# pragma version ^0.4.0

ready: public(bool)

is_completed: public(bool)

@deploy
def __init__():

    self.ready = True

    self.is_completed = False
