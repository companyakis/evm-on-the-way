// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    struct QuarterlySalesData {
        string salesPerson;
        uint64[4] quarterlySales;
    }

    QuarterlySalesData[] public sales;

    function setQuarterlySales(string memory _emp, uint64[4] memory _s) external {

        sales.push(QuarterlySalesData(_emp, _s));
    }

    function getSales(uint64 _index) external view returns (uint64[4] memory) {
       
        require(_index < sales.length, "Invalid index: Index out of bounds");

        QuarterlySalesData storage data = sales[_index];

        return data.quarterlySales;
    }

}
