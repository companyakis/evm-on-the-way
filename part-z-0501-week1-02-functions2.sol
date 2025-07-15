/*
 Your Goal: Increment x
Let's build on your code from the previous stage!

Create an external function called increment that will add 1 to the state variable x.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    uint public x;

    constructor(uint _mustafa) {

        x = _mustafa;
    }

    function increment() external {

        x += 1;
    }

}
