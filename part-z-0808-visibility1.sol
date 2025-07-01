//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Visibility {

// Declare an external function named 'externalFunc' that returns a string 'External function called'

    function externalFunc() external pure returns (string memory) {

        return "External function called";
    }
}
