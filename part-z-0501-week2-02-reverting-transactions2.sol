 /*Your Goal: Owner Withdrawal
Create a public function withdraw that will withdraw all funds from the contract and send them to the deployer of the contract.
Require that only the deployer of the contract be allowed to call this function. For all other addresses, this function should revert.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    address public owner;


    constructor() payable {

        owner = msg.sender;

        require(msg.value >= 1 ether, "At least 1 Ether!");
    }
    

    function withdraw() public {

        require(msg.sender == owner);

        uint balance = address(this).balance;

        payable(msg.sender).transfer(balance);
    }
}
