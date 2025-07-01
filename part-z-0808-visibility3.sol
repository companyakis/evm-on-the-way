//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Visibility {

// Declare an internal function named 'internalFunc' that returns a string 'Internal function called'

    function internalFunc() internal pure returns (string memory) {

        return "Internal function called";
    }
}
