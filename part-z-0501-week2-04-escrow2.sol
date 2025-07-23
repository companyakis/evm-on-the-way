/*
Constructor Storage 
Each time that a depositor, arbiter and beneficiary come to an agreement upon Escrow terms, they can deploy a contract.

The depositor will be the deployer of the contract. They will ask the arbiter and beneficiary for addresses that those two parties have access to. 
Then the depositor will provide those addresses as the arguments to the Escrow contract for storage.

Your Goal: Store Addresses
Create a constructor which takes two arguments: an address for the arbiter and an address for the beneficiary (in that order). Store these variables in the corresponding state variables.
The depositor is the address deploying the contract, so take this address and store it in the depositor state variable.

*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {

    address public depositor; 

    address public beneficiary;

    address public arbiter;

    constructor(address _a, address _b) {

        depositor = msg.sender;

        beneficiary = _b;

        arbiter = _a;
    }
    
}
