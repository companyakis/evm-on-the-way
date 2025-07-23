/*
Let's create an event so it is easy for an application to subscribe to when the Escrow is approved!

Your Goal: Approved
Create an event called Approved which takes a single uint parameter: the balance that is sent to the beneficiary.

Emit this event from within the approve function.

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

    event Approved(uint);

    function approve() external {

        //payable(beneficiary).transfer(address(this).balance);

        require(msg.sender == arbiter, "");

        uint balance = address(this).balance;

        (bool s, ) = beneficiary.call{ value: balance}("");

        require(s); // s => success

        emit Approved(balance);
    }
    
}

