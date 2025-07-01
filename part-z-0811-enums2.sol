//SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract Enumerables {

// Declare an enum named 'State' with two states: 'Active' and 'Inactive'
// Declare a variable of type 'State' named 'currentState'

    enum State {

        Active,
        Inactive
    }

    State public currentState;
}
