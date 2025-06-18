// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Mustafa {

    function returnCompanyInfo(string calldata _founder, uint16 _foundationYear) external pure returns (string calldata, uint16) {

        return (_founder, _foundationYear);
    }

    function returnYears(uint16[] calldata _years) external pure returns (uint16[] calldata) {

        return _years;
    }

}


/*
In Solidity, `calldata` and `memory` are temporary storage locations for variables during function execution.
`calldata` is read-only, used for function inputs that can't be modified. In contrast, `memory` allows for read-write access, 
letting variables be changed within the function. To modify `calldata` variables, they must first be loaded into `memory`

Calldata variables are read-only and cheaper than memory. They are mostly used for input parameters.

`calldata` variables can't be manipulated.

*/
