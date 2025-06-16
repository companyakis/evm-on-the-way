// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    // city mayor, name, population

    // Cemil Tugay, Izmir, 4_480_000

    mapping(string => mapping(string => uint64)) public city;

    
    function setCity(string memory mayor, string memory name, uint64 population) external {

        city[mayor][name] = population;
    }

    function getCityPopulation(string memory mayor, string memory name) external view returns (uint64) {

        return city[mayor][name];
    }


}
