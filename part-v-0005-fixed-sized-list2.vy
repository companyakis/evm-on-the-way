# pragma version ^0.4.0

struct Employee:

    name: String[100]
    title: String[50]
    department: String[50]
    salary_usd: uint16

employees: public(Employee[10])

emp_ayhan: public(Employee)


@deploy
def __init__():

    self.emp_ayhan.name = "Ayhan Budak"
    self.emp_ayhan.title = "Assistant"
    self.emp_ayhan.department = "HR"
    self.emp_ayhan.salary_usd = 2_600

    self.employees[0] = self.emp_ayhan
