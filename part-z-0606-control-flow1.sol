/*
⭐️ Assignment
Create a new function called evenCheck in the IfElse contract:

That takes in a uint as an argument.
The function returns true if the argument is even, and false if the argument is odd.
Use a ternery operator to return the result of the evenCheck function.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract IfElse {
    
    function evenCheck(uint a) public pure returns (bool) {

        return a % 2 == 0 ? true : false;
    }
}
