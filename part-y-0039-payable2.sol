//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Payable {

// Declare a payable address with the name 'recipient'
// Initialize 'recipient' with the address of the contract deployer in the constructor

    address payable recipient;

    constructor() {

        recipient = payable(msg.sender);
    }
}
