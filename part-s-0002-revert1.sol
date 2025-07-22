// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function ageControl(uint8 _age) public pure returns (string memory) {

        if (_age < 18) {

            revert("Age must be at least 18!");
        }

        return "He/she can vote!";
    }

}
