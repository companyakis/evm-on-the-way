//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Visibility {

// Declare a public function named 'publicFunc' that returns a string 'Public function called'

    function publicFunc() public pure returns (string memory) {

        return "Public function called";
    }
}
