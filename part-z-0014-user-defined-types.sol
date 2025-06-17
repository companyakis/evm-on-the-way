// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    type Salary is uint16;

    type Holder is address;

    struct SalaryData {
        Holder h;
        Salary s;
    }

    SalaryData[] public salaries;

    
    function addSalaryData(Holder _h, Salary _s) external {

        salaries.push(SalaryData(_h, _s));
    }


}
