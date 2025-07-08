//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Immutable {

// Declare an immutable variable of type uint256 with the name 'MAX_BLOCKS' and assign it a value of 5000 in the constructor

    uint256 immutable MAX_BLOCKS;

    constructor() {

        MAX_BLOCKS = 5000;
    }
}
