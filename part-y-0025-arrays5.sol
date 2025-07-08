//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Arrays {

// Inside a function named 'createMemoryArray', create a fixed size array in memory with the name 'memoryArray' and size 5

    function createMemoryArray() public pure {

        uint256[] memory memoryArray = new uint256[](5);
    }
}
