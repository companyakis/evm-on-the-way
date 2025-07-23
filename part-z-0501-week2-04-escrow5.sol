/*
Lock it Down 
There's only one address that should be able to call the approve method: the arbiter. 

This is their role in the escrow transaction, to decide when the funds can be transferred.

 Your Goal: Security
If anyone tries to call approve other than the arbiter address, revert the transaction.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {

    address public depositor; 

    address public beneficiary;

    address public arbiter;

    constructor (address _a, address _b) payable {

        depositor = msg.sender;

        beneficiary = _b;

        arbiter = _a;
    }

    function approve() external {

        //payable(beneficiary).transfer(address(this).balance);

        require(msg.sender == arbiter, "");

        (bool s, ) = beneficiary.call{ value: address(this).balance}("");

        require(s); // s => success
    }
    
}

