//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Modifiers {

// Create a function named 'myFunction' that uses the 'myModifier' modifier with a value of 15

    modifier myModifier(uint value) {

        require(value > 10, 'Value is too small');
        _;
    }

    function myFunction() public myModifier(15) {
        
    }
}
