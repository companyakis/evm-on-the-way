//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Payable {

// Declare a payable address with the name 'recipient'
// Initialize 'recipient' with the address of the contract deployer in the constructor
// Create a payable function named 'deposit' that can receive Ether
// Create a function named 'withdraw' that sends all Ether stored in the contract to the 'recipient' address

    address payable recipient;

    constructor() {

        recipient = payable(msg.sender);
    }

    function deposit() public payable {
        
    }

    function withdraw() public {

        (bool s, ) = recipient.call{value: address(this).balance}("");

        require(s, "Failed to send Ether");
    }
}
