//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract NestedMapping {

// Declare a nested mapping from address to another mapping (from uint256 to bool) with the name 'nested'

    mapping(address => mapping(uint256 => bool)) public nested;
}
