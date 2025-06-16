// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    enum Titles {
        CEO, // 0
        Director, // 1
        Senior, // 2
        Auditor, // 3
        Expert, // 4
        Assistant // 5
    }

    mapping (string => Titles) public employees;

    function setEmployee(string memory _name, Titles _title) external {

        employees[_name] = _title;
    }

    function getEmployee(string memory _name) external view returns (Titles) {

        return employees[_name];
    }

}
