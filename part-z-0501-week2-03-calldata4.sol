//  Your Goal: Pass Calldata
// The Sidekick needs to be able to relay any calldata along to the Hero. Update the relay function to take the data and send it to the Hero as calldata.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function relay(address hero, bytes memory data) external {
        // send all of the data as calldata to the hero
        (bool s, ) = hero.call(data);

        require(s);
    }
}



//Hero.sol content
// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.20;

// contract Hero {
//     Ambush public ambush;

//     struct Ambush {
//         bool alerted;
//         uint enemies;
//         bool armed;
//     }

//     uint lastContact;

//     function alert(uint enemies, bool armed) external {
//         ambush = Ambush(true, enemies, armed);
//     }
// }
