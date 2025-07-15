 /*Your Goal: Hello World 
It's time to do Hello World in Solidity! 

Create a public bytes32 storage variable msg1 which stores a string literal "Hello World".

Create a public string storage variable msg2 which stores a string literal that requires over 32 bytes to store.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {

    bytes32 public msg1 = "Hello World";

    string public msg2 = "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ";
	
}
