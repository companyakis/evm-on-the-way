//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Immutable {

// Declare an immutable variable of type string with the name 'TOKEN_NAME' and assign it a value of 'MyToken' in the constructor

    string immutable TOKEN_NAME;

    constructor() {

        TOKEN_NAME = 'MyToken';
    }
}
