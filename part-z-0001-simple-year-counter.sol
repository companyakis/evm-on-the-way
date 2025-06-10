// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint16 public year;

    constructor(uint16 _y) {

        year = _y;
    }

    function yearUp() public {

        year += 1;
    }

    function yearDown() public {

        require(year > 2020, "Old years! We are here!");
        
        year -= 1;
    }

}

