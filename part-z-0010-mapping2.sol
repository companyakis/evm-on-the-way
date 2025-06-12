// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    mapping(string => uint16) public salaryByName;

    function setSalary(string memory _name, uint16 _salary) external {

        salaryByName[_name] = _salary;
    }

    // delete function

    function deleteSalary(string memory _name) external {

        delete salaryByName[_name];
    }

}
