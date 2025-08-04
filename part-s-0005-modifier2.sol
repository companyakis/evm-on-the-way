// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint8 public age;

    uint16 public counter;

    constructor(uint8 _age) {

        counter = 100;
        age = _age;
    }

    modifier onlyPersonOver30() {

        require(age > 30, "People over 30 can increase the counter!");
      _;

    }

    function counterUp() public onlyPersonOver30 {

        counter++;
    }
    
}
