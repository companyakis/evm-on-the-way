//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Enumerables {

// Declare an enum named 'State' with two states: 'Active' and 'Inactive'

    enum State {
        Active,
        Inactive
    }

// Declare a variable of type 'State' named 'currentState'

    State public currentState;
}
