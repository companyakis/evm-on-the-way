//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mustafa {
    
    // value types - reference types

    // Value types store their data directly. When you assign a value type to another variable, you get a copy of the value.

    uint16 public thisYear = 2025;

    uint16 public currentYear = thisYear;

    function updateCurrentYear() public {

        currentYear = 2024;
    }

}

// currentYear 2024, thisYear 2025
