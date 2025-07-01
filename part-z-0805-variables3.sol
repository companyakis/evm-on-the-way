//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Variables {

// Inside a function named 'getBalance', return the balance of the current contract using the global variable 'balance'

    function getBalance() public view returns (uint256) {

        return address(this).balance;
    }
}
