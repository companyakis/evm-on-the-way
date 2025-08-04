// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract TransactingEther {

// Implement a function named 'sendEther' that sends 'amount' of Ether to the 'recipient' address using the 'call' method

    function sendEther() public {

        (bool success, ) = recipient.call{value: amount}("");

        require(success, 'Failed to send Ether');
    }
}
