// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function returnMyInfo(string memory _myName, uint8 _fakeAge) external pure returns (string memory, uint8) {

        _myName = "Mustafa B";
    
        return (_myName, _fakeAge);
    } 

}



/*
In Solidity, `calldata` and `memory` are temporary storage locations for variables during function execution. 
`calldata` is read-only, used for function inputs that can't be modified. In contrast, `memory` allows for read-write access, 
letting variables be changed within the function. To modify `calldata` variables, they must first be loaded into `memory`.



*/
