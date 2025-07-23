/*Your Goal: Trigger the fallback
In the makeContact method, send some calldata to the Hero contract that will trigger its fallback function.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
        // send over any calldata that doesnt match existing signatures!
        (bool success, ) = hero.call(
            abi.encodeWithSignature("")
        );

        require(success);
    }
}



// Hero.sol file content

// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// contract Hero {
//     Ambush public ambush;

//     struct Ambush {
//         bool alerted;
//         uint enemies;
//         bool armed;
//     }

//     uint public lastContact;

//     function alert(uint enemies, bool armed) external {
//         ambush = Ambush(true, enemies, armed);
//     }
    
//     fallback() external {
//         lastContact = block.timestamp;
//     }
// }
