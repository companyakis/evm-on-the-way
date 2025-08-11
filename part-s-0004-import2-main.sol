// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {SomeMath} from "./toolkit.sol";

contract MustafaOperations {

    SomeMath public mathOperations = new SomeMath();

    function getTotal(uint x, uint y, uint z) public view returns (uint) {

        return mathOperations.sum(x, y, z);
    }
    
}

