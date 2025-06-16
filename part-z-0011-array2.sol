// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    string[] public familyMembers;

    string[5] public directors; // fixed-size
 

    function setDirector(uint8 _i, string memory _name) external {

        directors[_i] = _name;
    }

    
}
