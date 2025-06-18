// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    enum Titles {
        Manager,
        SeniorExpert,
        Auditor,
        Expert,
        Assistant
    }

    enum Departments {
        FinTech,
        Sales,
        Marketing,
        Audit,
        Operations,
        Finance
    }

    struct SalaryData {
        string employeeName;
        Departments department;
        Titles title;
        uint16 salaryUSD;
    }

    SalaryData[] public salaries;

    function addSalary(string memory _name, Departments _dep, Titles _t, uint16 _salary) external {

        salaries.push(SalaryData(_name, _dep, _t, _salary));
    }

}
