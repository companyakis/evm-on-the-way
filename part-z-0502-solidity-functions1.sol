/*
Your Goal: Unsigned Int Constructor
Create a constructor which will take a uint as an argument.
Store this uint value inside a public storage variable called x.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    uint public x;

    constructor(uint _num) {

        x = _num;
    }

}
