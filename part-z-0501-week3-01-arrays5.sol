/*
 Your Goal: Remove Members
Create a constructor which will add the deployer address as the first member of the stack club.
Create a removeLastMember function which will remove the last member added to the club.
 
Function Security
Ensure that the removeLastMember function can only be called by an existing member
Ensure that addMember can only be called by an existing member

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {

    address[] public members;

    constructor() {

        members.push(msg.sender);
    }

    function addMember(address _a) external {

        require(isMember(msg.sender), "Not a member!");

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


    function removeLastMember() public {

        require(isMember(msg.sender), "Not a member!");

        members.pop();

    }
    
}
