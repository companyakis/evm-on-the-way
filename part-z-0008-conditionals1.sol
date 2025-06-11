// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    uint64 public premium;

    function calculatePremium(uint64 weeklySales) public  {

        if (weeklySales > 150_000) {

            premium = weeklySales / 10;

        }

        else if (weeklySales < 150_000 && weeklySales > 100_000) {

            premium = weeklySales / 15;

        }

        else {

            premium = 500;
        }
    }

}
