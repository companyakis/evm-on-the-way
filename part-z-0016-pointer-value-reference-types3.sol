//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Mustafa {
    
    // value types - reference types

    uint16[] public importantYears = [2018, 2020, 2025];

    
    function updateYears() public view returns (uint16[] memory) {

        uint16[] memory someYears = importantYears;

        someYears[0] = 2008;

        return someYears;
    }

    function returningYears() public view returns (uint16[] memory) {

        return importantYears;
    }
}

