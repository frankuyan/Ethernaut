


### Approach to Vault Ethernaut Problem 


```
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Vault {
    bool public locked;
    bytes32 private password;

    constructor(bytes32 _password) {
        locked = true;
        password = _password;
    }

    function unlock(bytes32 _password) public {
        if (password == _password) {
            locked = false;
        }
    }
}


```


The best way to solve this problem is actually look at the Eth Exploer (remember to use Sepolia Test Network) and find any storage string attached to the contract. 

1. You can either visit https://sepolia.etherscan.io/ and paste the instance address from Ethernaut. 


OR 

`password = await web3.eth.getStorageAt(contract.address, 1)` since given slot and variable, if the slot is 0, then contract is expected to be locked. While a 1 value would prompt the contract to be in 
an unlocked state. 



2. Check if you are able to receive a hex string that is the password. In our example, the hex string `0x412076657279207374726f6e67207365637265742070617373776f7264203a29` converts to `A very strong secret password :)`



3. In console, `await contract.unlock(password)` to unlock the contract. You may also use `await contract.locked()' to check if the contract is locked or unlocked. It should take roughly 
30sec - 1min for the contract to be unlocked. 

