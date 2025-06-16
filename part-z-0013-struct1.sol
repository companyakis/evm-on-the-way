// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    struct Department {
        string depName;
        string depHead;
        uint8 employees;
    }

    // keep all deps

    Department[] public departments;

    function addDep(string memory _dn, string memory _dh, uint8 _e) external {

        departments.push(Department(_dn, _dh, _e));
    }

}
