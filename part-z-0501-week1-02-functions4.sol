/*
Your Goal: Double Uint
Create an external, pure function called double which takes a uint parameter and doubles it. It should return this doubled uint value.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    function double(uint a) external pure returns (uint) {

        return a * 2;
    }

}
