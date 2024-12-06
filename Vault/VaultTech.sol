

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/Vault.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";



contract VaultTech is Script {
    Vault public instance = Vault(0x412076657279207374726f6e67207365637265742070617373776f7264203a29)

    function public run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        valutInstance.unlock(0x412076657279207374726f6e67207365637265742070617373776f7264203a29);
        vm.stopBroadcast();

        return balance; 
        
    }


}