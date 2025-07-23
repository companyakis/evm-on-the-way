//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Modifiers {

// Create a modifier named 'myModifier' that requires a value to be greater than 10

    modifier myModifier(uint _value) {

        require(_value > 10, '');
        _;
    }
}
