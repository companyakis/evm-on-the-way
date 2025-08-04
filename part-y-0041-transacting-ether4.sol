// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Step 1: Import the OpenZeppelin ReentrancyGuard contract
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

// Step 2: Implement a contract named 'SendEtherGuarded' that inherits from ReentrancyGuard
// Step 3: Inside the 'SendEtherGuarded' contract, implement a function named 'sendEther' that takes two parameters: an address payable 'recipient' and a uint256 'amount'
// Step 4: The 'sendEther' function should be external and payable
// Step 5: Apply the 'nonReentrant' modifier to the 'sendEther' function
// Step 6: Inside the 'sendEther' function, add a require statement to check that the contract has enough Ether to send
// Step 7: Still inside the 'sendEther' function, use the 'call' method to send the specified amount of Ether to the specified address
// Step 8: Add a require statement to check that the call was successful

contract SendEtherGuarded is ReentrancyGuard {

    function sendEther(address payable recipient, uint256 amount) external payable nonReentrant {

        require(address(this).balance >= amount, 'Not enough Ether');

        (bool success, ) = recipient.call{value: amount}('');

        require(success, 'Failed to send Ether');

    }

}
