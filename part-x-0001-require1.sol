// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function ageControl(uint8 _age) public pure {

        require(_age >= 18, "Age must be at least 18!");
    }

}
