/*
Your Goal: Remove Member
Create an external function called removeMember that will take an address and set its corresponding value in the members mapping to false.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    
    mapping(address => bool) public members;

    function addMember(address _a) external {

        members[_a] = true;
    }


    function isMember(address _a) external view returns (bool) {

        return members[_a];
    }


    function removeMember(address _a) external {

        members[_a] = false;
    }
}
