//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Variables {

// Inside a function named 'getGasPrice', return the current gas price using the global variable 'gasprice'

    function getGasPrice() public view returns (uint256) {

        return tx.gasprice;
    }
}
