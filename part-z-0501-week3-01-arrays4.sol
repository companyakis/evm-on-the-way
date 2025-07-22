/*
Your Goal: Add Members 
Create a dynamic sized array of addresses called members
Create an external function addMember which has a single parameter: an address for a new member. Add this address to the members array.
Create a public view function isMember that takes an address and returns a bool indicating whether the address is a member or not.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {

    address[] public members;

    function addMember(address _a) external {

        members.push(_a);
    }

    function isMember(address _a) public view returns (bool) {

        for (uint i = 0; i < members.length; i++) {

            if (_a == members[i]) {

                return true;
            }
        }

        return false;
    }
    
}
