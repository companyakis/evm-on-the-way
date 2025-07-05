# pragma version 0.4.0

# Define a struct named 'Employee' with two attributes:
# - 'name' of type 'String[50]'
# - 'salary' of type 'uint256'

struct Employee:
    name: String[50]
    salary: uint256

# Declare a public mapping 'employees' that maps 'address' to 'Employee'

employees: public(HashMap[address, Employee])

# Create an external function 'set_employee' that takes:
# - 'employee_address' (address)
# - 'name' (String[50])
# - 'salary' (uint256)
# The function should store the employee details in 'employees'

@external
def set_employee(employee_address: address, name: String[50], salary: uint256):
    self.employees[employee_address] = Employee({name: name, salary: salary})

# Create an external view function 'get_employee' that takes:
# - 'employee_address' (address)
# The function should return the corresponding 'Employee' struct

@external
@view
def get_employee(employee_address: address) -> Employee:
    return self.employees[employee_address]
