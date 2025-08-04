// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Step 1: Implement a contract named 'SendEtherChecked'
// Step 2: Inside the 'SendEtherChecked' contract, declare a public mapping named 'balances' that maps addresses to uint256
// Step 3: Still inside the 'SendEtherChecked' contract, implement a function named 'sendEther' that takes two parameters: an address payable 'recipient' and a uint256 'amount'
// Step 4: The 'sendEther' function should be public and payable
// Step 5: Inside the 'sendEther' function, add a require statement to check that the sender has enough Ether to send
// Step 6: Still inside the 'sendEther' function, update the balances of the sender and the recipient
// Step 7: Still inside the 'sendEther' function, use the 'call' method to send the specified amount of Ether to the specified address
// Step 8: Add a require statement to check that the call was successful
contract SendEtherChecked {
    mapping(address => uint256) public balances;

    function sendEther(address payable recipient, uint256 amount) public payable {

        require(balances[msg.sender] >= amount, 'Not enough Ether');

        balances[msg.sender] -= amount;

        balances[recipient] += amount;

        (bool success, ) = recipient.call{value: amount}('');

        require(success, 'Failed to send Ether');

    }
}
