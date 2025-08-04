// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    address public owner;

    constructor() {
        
        owner = msg.sender;
    }

    modifier NotZeroAddress(address _a) {

        require(_a != address(0), "Zero address can't be acceptable!");
        _;
    }

    function setOwner(address _newOwner) public NotZeroAddress(_newOwner) {

        owner = _newOwner;
    }
}
