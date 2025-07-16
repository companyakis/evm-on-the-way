/*
⭐️ Assignment
Initialize a public fixed-sized array called arr3 with the values 0, 1, 2. Make the size as small as possible.
Change the getArr() function to return the value of arr3.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Array {

    uint[3] public arr3 = [0, 1, 2];

    function getArr() public view returns (uint[3] memory) {

        return arr3;
    }

}  
