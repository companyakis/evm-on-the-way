/*
Your Goal: Owner Withdrawal
Create a public function withdraw that will withdraw all funds from the contract and send them to the deployer of the contract.
Require that only the deployer of the contract be allowed to call this function. For all other addresses, this function should revert.
 The deployer of the contract is msg.sender of the constructor.

*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address owner;

    constructor() payable {

        owner = msg.sender;

        require(msg.value >= 1 ether, "At least 1 Eth!");
    }

    function withdraw() public {

        require(msg.sender == owner);

        payable(msg.sender).transfer(address(this).balance);

    }
    
}
