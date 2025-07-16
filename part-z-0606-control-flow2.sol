/*
⭐️ Assignment
Create a public uint state variable called count in the Loop contract.
At the end of the for loop, increment the count variable by 1.
Try to get the count variable to be equal to 9, but make sure you don’t edit the break statement.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Loop {
    uint public count;

    function loop() public {
        // for loop
        for (uint i = 0; i < 10; i++) {

            count++;

            if (i == 9) {
                // Exit loop with break
                break;
            }
        }
    }
}
