/*
Your Goal: Transfer Tips
Let's create a way to tip the contract owner!

Create a public payable function tip which sends any of its received ether to the owner.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;

    constructor() {

        owner = msg.sender;
    }

    receive() external payable {
        
    }

    function tip() public payable {

        (bool s, ) = owner.call{ value: msg.value}("");
        
        require(s);
    }
    
}
