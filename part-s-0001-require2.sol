// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function profitorLossCalculator(uint256 _sales, uint256 _cost) public pure returns (uint256) {

        require(_sales != 0, "Sales amoun can't be zero!");

        require(_cost > 0 && _cost < 50_000, "We have to control total cost! Total cost can't exceed $ 49999!");

        return _sales - _cost;
    }

}
