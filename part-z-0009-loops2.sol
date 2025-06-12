// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint16[] public yearsArr;

    function yearCounter() public {

        uint16 year = 2018;

        while (year <= 2025) {

            yearsArr.push(year);
            
            year++;

            if (year == 2023) {
                break;
            }
        }
    }
}
