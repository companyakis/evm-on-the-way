//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Validations {

// Use 'revert' to stop execution if a condition is met

    function validateNumber(uint num) public {

        if (num > 30) {

            revert();
        }
    }
}
