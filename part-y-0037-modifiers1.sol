//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Modifiers {

// Create a modifier named 'myModifier' that requires the sender to be the zero address

    modifier myModifier {

        require(msg.sender == address(0), "...");
        _;
    }
}
