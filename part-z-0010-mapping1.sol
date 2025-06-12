// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    mapping(string => uint16) public salaries;

    function setSalary(string memory _name, uint16 _salary) external {

        salaries[_name] = _salary;
    }

}
