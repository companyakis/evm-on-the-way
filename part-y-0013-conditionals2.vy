# pragma version 0.4.0

# Declare a public state variable 'status' of type boolean

status: public(bool)

# Define an external function named `toggle_status` that takes a `bool` input named `force_active`.
# The function should update a state variable `status` as follows:
# - If `force_active` is `True`, set `status` to `True`.
# - Otherwise, toggle the current value of `status`.

@external
def toggle_status(force_active: bool):
    
    if force_active:
        self.status = True 
    else:
        self.status = False # self.status = not self.status (I think so)
