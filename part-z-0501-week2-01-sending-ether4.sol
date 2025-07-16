/*
Let's take all funds that were passed to the receive function and donate them to charity. We'll do this in two steps.

First, modify the constructor to accept a new argument: the charity address.
Next, add a new function called donate. When this function is called transfer all remaining funds in the contract to the charity address.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    
    address public owner;

    address public charity;

    constructor(address _c) {

        owner = msg.sender;

        charity = _c;
    }

    receive() external payable {

    }

    function tip() public payable {

        (bool s, ) = owner.call{ value: msg.value}("");
        
        require(s);
    }

    function donate() public payable {

        (bool s, ) = charity.call{ value: address(this).balance}("");

        require(s);
    }

}
