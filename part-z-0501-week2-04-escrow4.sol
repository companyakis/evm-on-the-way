/*
Approval
After the contract has been deployed with the appropriate amount of funds, the beneficiary will provide the good or service. They are now secure in knowing that the money is on its way! 

Once the good or service is provided, the arbiter needs a way to approve the transfer of the deposit over to the beneficiary's account. 

Let's add this mechanism to our contract!

 Your Goal: Approve
Create an external function called approve.
This function should move the contract's balance to the beneficiary's address.
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

        (bool s, ) = beneficiary.call{ value: address(this).balance}("");

        require(s); // s => success
    }
    
}

