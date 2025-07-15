 /*Your Goal: Create Unsigned Integers!
Let's create three public storage unsigned integers in our Contract: a, b, and sum.

Define the variable a as an uint8 with an initial value between 0 and 255.

Define the variable b as an uint16 with a value of at least 256.

The variable sum should be a uint256 with the sum of the values stored in a and b.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    uint8 public a = 100;

    uint16 public b = 257;

    uint256 public sum = a + b; 
    
}
