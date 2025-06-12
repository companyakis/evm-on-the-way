// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint16[] public yearsArr;

    function yearCounter() public {

        for (uint16 y = 2018; y <= 2025; y++) {

            if (y == 2020) {

                continue;
            }

            yearsArr.push(y);
        }
    }
}
