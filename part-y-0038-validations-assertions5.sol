//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Validations {

// Use 'assert' to validate that a number is equal to 15

    function validateNumber(uint num) public {

        assert(num == 15);
    }
}
