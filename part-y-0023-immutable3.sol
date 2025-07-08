//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Immutable {

// Declare an immutable variable of type string with the name 'TOKEN_TICKER' and assign it a value of 'MTK' in the constructor

    string immutable TOKEN_TICKER;

    constructor() {

        TOKEN_TICKER = 'MTK';
    }
}
