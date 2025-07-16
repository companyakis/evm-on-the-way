/*
⭐️ Assignment
Create a public mapping balances that associates the key type address with the value type uint.
Change the functions get and remove to work with the mapping balances.
Change the function set to create a new entry to the balances mapping, where the key is the address of the parameter and the value is the balance associated with the address of the parameter.
*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Mapping {

    mapping(address => uint) public balances;

    function get(address _addr) public view returns (uint) {
        
        return balances[_addr];
    }

    function set(address _addr, uint _i) public {
      
        balances[_addr] = _i;
    }

    function remove(address _addr) public {

        delete balances[_addr];
    }
}

