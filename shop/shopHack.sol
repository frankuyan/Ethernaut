// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface Hack {

    Shop private immutable shop; 

    constructor(address _shopAddress) {
        shop = IShop(_shopAddress);
    }


    
    
}