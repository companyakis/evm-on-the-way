// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function profitorLossCalculator(uint256 _sales, uint256 _cost) public pure returns (uint256) {

        assert(_sales != 0);

        assert(_cost > 0 && _cost < 50_000);

        return _sales - _cost;
    }

}
