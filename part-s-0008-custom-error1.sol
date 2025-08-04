// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    error InsufficientAccountBalance(uint currentBalance, uint customerWithdraw);

    function checkWithdraw(uint _cw) public view {

        // current account balance

        uint cb = address(this).balance;

        if (cb < _cw) {

            revert InsufficientAccountBalance({
                currentBalance: cb,
                customerWithdraw: _cw
            });
        }
    }
    
}
