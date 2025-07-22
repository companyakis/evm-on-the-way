# pragma version ^0.4.0

struct Employee:

    name: String[100]
    title: String[50]
    salary_usd: uint16


emp_ayhan: public(Employee)


@deploy
def __init__():

    self.emp_ayhan.name = "Ayhan Bilir"
    self.emp_ayhan.title = "Finance Expert"
    self.emp_ayhan.salary_usd = 6_400
