// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./calculus.sol";

contract Mustafa {

    MathOperations public someMath = new MathOperations(); // state variable!

    function totalSixMonthSales(uint256 m1, uint256 m2, uint256 m3, uint256 m4, uint256 m5, uint256 m6) public view returns (uint256) {

        return someMath.salesTotal(m1, m2, m3, m4, m5, m6);
    }

    function yearlySalesAmount(uint256 q1, uint256 q2, uint256 q3, uint256 q4) public view returns (uint256) {
        
        return someMath.salesTotal(q1, q2, q3, q4);
    }

}
