# pragma version ^0.4.0

emp_salary: public(HashMap[uint16, uint16]) # employee ID and USD salary


@external
def set_emp_salary(emp_id: uint16, s: uint16):

    self.emp_salary[emp_id] = s


@external
@view
def get_emp_salary(emp_id: uint16) -> uint16:

    return self.emp_salary[emp_id]
