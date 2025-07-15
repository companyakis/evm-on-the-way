/*
⭐️ Assignment
Create a function called addToX2 that takes the parameter y and updates the state variable x with the sum of the parameter and the state variable x.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract ViewAndPure {

    uint public x = 1;

    function addToX2(uint y) public {

        x += y;
    }
}
