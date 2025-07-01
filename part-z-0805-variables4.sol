//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Variables {

// Declare a state variable of type address with the name 'owner' and initialize it with the address of the contract deployer

    address public owner;

    constructor() {

        owner = msg.sender;
    }

}
