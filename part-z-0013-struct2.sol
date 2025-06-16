// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    struct Department {
        string depName;
        string depHead;
        uint8 employees;
    }

    Department[] public departments;

    function addDep(string memory _dn, string memory _dh, uint8 _e) external {

        departments.push(Department(_dn, _dh, _e));
    }

    // update emp number

    function updateEmpNum(uint8 _index, uint8 _newEmpNum) external {

        departments[_index].employees = _newEmpNum;
    }

}
