// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {SomeMath} from "./toolkit.sol";

contract MathOperations is SomeMath {

    function sum(uint x, uint y, uint z) public override pure returns (uint) {

        return x * 2 + y * 3 + z * 4;
    }

}

