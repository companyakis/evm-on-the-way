/*
Your Goal: Require 1 Ether
Add a payable constructor method that requires a 1 ether deposit.

If at least 1 ether is not sent to the constructor, revert the transaction.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    constructor() payable {

        require(msg.value >= 1 ether, "At least 1 Eth!");
    }
    
}
