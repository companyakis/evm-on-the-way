//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Modifiers {

    modifier myModifier {

        require(msg.sender == address(0), "...");
        _;
    }

// Create a function named 'myFunction' that uses the 'myModifier' modifier

    function myFunction() public myModifier {
        
    }
}
