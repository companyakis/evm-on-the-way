/*
Proposal Storage 
In this stage we're going to focus on the storage of new proposals.

A proposal should take in some calldata, and a target. When the proposal passes the voting stage, the contract will send that calldata to the target. 
To begin with, the yesCount and noCount should be zero until we record some votes!

 Your Goal: Proposals
Create a public array of type Proposal and call it proposals.
Create an external function newProposal which takes two arguments:
An address argument which will be the target address of the proposal. We'll send some calldata to this address.
A bytes argument which will be the calldata to eventually send to the smart contract when the proposal is executed.
In the newProposal function create a new Proposal with the arguments passed in and the yes/no vote counts are initialized at 0.
Add the new Proposal to the proposals array.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Voting {

    struct Proposal {
        address target;
        bytes data;
        uint yesCount;
        uint noCount;
    }

    Proposal[] public proposals;

    function newProposal(address _t, bytes memory _data) external {

        proposals.push(Proposal(_t, _data, 0, 0));
    }
    
}
