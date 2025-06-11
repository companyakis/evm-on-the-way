// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    bool public cond1 = 1 seconds == 1;

    bool public cond2 = 1 minutes == 60 seconds;

    bool public cond3 = 1 hours == 59 minutes + 12 minutes;

    bool public cond4  = 2 days == 61 hours;

    bool public cond5  = 3 weeks == 21 days;

}
