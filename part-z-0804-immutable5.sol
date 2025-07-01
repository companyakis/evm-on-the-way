//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Immutable {

// Declare an immutable variable of type uint256 with the name 'GAS_LIMIT' and assign it a value of 3000000 in the constructor

    uint256 immutable GAS_LIMIT;

    constructor() {

        GAS_LIMIT = 3000000;
    }
}
