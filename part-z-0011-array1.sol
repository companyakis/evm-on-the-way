// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint32[] public salesByMonth;

    function setSales(uint32 _sale) external {

        salesByMonth.push(_sale);
    }


    function getMonthlySales(uint32 _index) external view returns (uint32) {

        return salesByMonth[_index];
    }

}
