/*
Challenge: Complete the 'ImmutableExample' contract by doing the following: 
1. Declare a public immutable address variable (e.g. MY_ADDRESS). 
2. Declare a public immutable uint (or uint256) variable (e.g. MY_NUMBER). 
3. In the constructor, set the address to msg.sender. 
4. Also in the constructor, set the uint to a parameter passed to the constructor.
*/

pragma solidity ^0.8.0;

contract ImmutableExample {

    address public immutable OWNER;
    uint public immutable TOTAL_SUPPLY;

    constructor(uint _s) {

        OWNER = msg.sender;
        TOTAL_SUPPLY = _s;
    }
}
