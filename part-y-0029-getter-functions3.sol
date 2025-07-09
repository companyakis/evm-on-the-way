//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract GetterFunctions {

uint public stateVar = 10;

// Define a pure function named 'pureFunc' that takes two uint parameters 'x' and 'y' and returns their sum

    function pureFunc(uint x, uint y) public pure returns (uint) {

        return x + y;
    }
}
