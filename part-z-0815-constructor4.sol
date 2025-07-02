//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Constructor {

// Declare a constructor that takes a uint parameter 'y' and initializes a uint variable 'x' with 'y'
// Declare a function 'getX' that returns the 'x' variable

    uint x;

    constructor(uint y) { x = y; }

    function getX() public view returns (uint) {

        return x;
    }
}
