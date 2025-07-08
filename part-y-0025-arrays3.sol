//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Arrays {

// Inside a function named 'addElement', add the element 5 to the 'dynamicArray'

    uint256[] public dynamicArray;

    function addElement() public {

        dynamicArray.push(5);
    }
}
