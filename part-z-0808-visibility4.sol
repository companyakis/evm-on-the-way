//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Visibility {

// Declare a private function named 'privateFunc' that returns a string 'Private function called'

    function privateFunc() private pure returns (string memory) {

        return "Private function called";
    }
}
