/*
Your Goal: Overload Double
Create another pure external function double which takes two uint parameters.
Double both of the arguments and return both of them in the same order they were passed into the function.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    function double(uint a) external pure returns (uint) {

        return a * 2;
    }

    function double(uint x, uint y) external pure returns (uint, uint) {

        return (x * 2, y * 2);
    }

}
