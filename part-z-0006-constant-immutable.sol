// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    // hard coded and using constants can save gas cost

    uint16 public constant MAX_AMOUNT = 15_500;

    string public constant FOUNDER = "Mustafa Buyukdereli";

    // can be set inside the constructor but cannot be modified afterwards

    uint16 public immutable birthYear;

    constructor(uint16 _by) {

        birthYear = _by;
    }

}

