//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Fallback {

// Declare a fallback function that increments a uint 'donationsCount' each time it's called

    uint public donationsCount;

    fallback() external payable {

        donationsCount++;
    }
}
