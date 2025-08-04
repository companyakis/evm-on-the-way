// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    bool public isLocked;

    uint16 public year;

    constructor() {
        
        year = 2025;
    }

    // noReentrancy v.1

    modifier noReentrancy() {
        
        require(!isLocked, "noReentrancy");

        isLocked = true;

        _;

        isLocked = false;
    }

    function yearDec() public noReentrancy {

        year--;
    }

}
