# pragma version ^0.4.0

struct Employee:

    name: String[100]
    title: String[50]
    salary_usd: uint16


@external
def set_employee(_name: String[100], _title: String[50], _salary_usd: uint16) -> Employee:

    return Employee(name=_name, title=_title, salary_usd=_salary_usd)
