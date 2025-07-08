//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Immutable {

// Declare an immutable variable of type string with the name 'CONTRACT_VERSION' and assign it a value of 'v1.0.0' in the constructor

    string immutable CONTRACT_VERSION;

    constructor() {

        CONTRACT_VERSION = 'v1.0.0';
    }
}
