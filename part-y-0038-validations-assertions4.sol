//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Validations {

// Use 'revert' with a custom error message to stop execution if a condition is met

    function validateNum(uint num) public {

        if (num > 30) {

            revert('Number must be smaller than 30');
        }
    }
}
