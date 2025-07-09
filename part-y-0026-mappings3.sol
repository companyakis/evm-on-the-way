//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mapping {

// Inside a function named 'get', return the uint256 value at a given address in 'myMap'

    function get(address _addr) public view returns (uint256) {

        return myMap[_addr];
    }
}
