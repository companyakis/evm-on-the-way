/*
Funding 
It's time to fund the contract!

The depositor will send some ether to the contract, which will be used to pay the beneficiary after the transfer is approved by the arbiter.

Your Goal: Payable
Modify the constructor function to make it payable.

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
    
}
