/*
Assignment
Create a new variable newAddr that is a public address and give it a value that is not the same as the available variable addr.
Create a public variable called neg that is a negative number, decide upon the type.
Create a new variable, newU that has the smallest uint size type and the smallest uint value and is public.

*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Primitives {

    address public newAddr = 0xe3c44d4d25172EF2e0CdB9e09189a8ca4ed878F4;

    int16 public neg = -1_000;

    uint8 public newU = 0;
}
