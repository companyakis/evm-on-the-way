/*
⭐️ Assignment
Create a new public state variable called blockNumber.
Inside the function doSomething(), assign the value of the current block number to the state variable blockNumber.

*/


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Variables {

    uint public blockNumber;

    function doSomething() public {

        blockNumber = block.number;
    }
}
