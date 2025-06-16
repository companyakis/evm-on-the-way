/*Your Goal: Add two boolean variables
Create two public boolean storage variables on the contract: a and b.

Store true in the variable a and false in the value b.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    bool public a = true;

    bool public b = !a;
	
}
