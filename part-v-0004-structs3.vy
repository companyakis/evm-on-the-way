# pragma version ^0.4.0

struct Departments:

    dep_name: String[50]
    dep_head: String[50]


struct Employee:

    name: String[100]
    title: String[50]
    department: String[50]
    salary_usd: uint16


finance_dep: public(Departments)

employee_bumin: public(Employee)


@deploy
def __init__():

    self.finance_dep.dep_name = "Finance and Accounting Operations"
    self.finance_dep.dep_head = "Kutluk Sayar"

    self.employee_bumin.name = "Bumin Gokturk"
    self.employee_bumin.title = "Bank Credits Expert"

    self.employee_bumin.department = self.finance_dep.dep_name

    self.employee_bumin.salary_usd = 4_650
