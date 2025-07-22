# pragma version ^0.4.0

emp_salary: public(HashMap[uint8, uint16]) # employee ID and USD salary


@deploy
def __init__():

    self.emp_salary[101] = 3_250

    self.emp_salary[96] = 4_400

