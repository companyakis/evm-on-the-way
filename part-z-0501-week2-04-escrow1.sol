/*
State Variables
We'll have three parties involved in the Escrow:

 Depositor - The payer of the Escrow, makes the initial deposit that will eventually go to the beneficiary.
 Beneficiary - The receiver of the funds. They will provide some service or good to the depositor before the funds are transferred by the arbiter.
 Arbiter - The approver of the transaction. They alone can move the funds when the goods/services have been provided.
For this first stage, let's create these addresses as public storage variables!

 Your Goal: Addresses
Create three public storage variables for the addresses of the depositor, beneficiary and arbiter
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Escrow {

    address public depositor; 

    address public beneficiary;

    address public arbiter;
    
}
