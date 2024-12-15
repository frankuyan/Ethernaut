
### King Ethernaut 9 


This is a unique contract that takes in the any arbitrary large value and compares to the current value. But we will need to try something else different. We can try to indentify a vulnerability to become the "King" 
without triggering the self-reclaimation process. **re-entry attack** might be an approach. 



> The contract below represents a very simple game: whoever sends it an amount of ether that is larger than the current prize becomes the new king. On such an event, the overthrown king gets paid the new prize, making a bit of ether in the process! As ponzi as it gets xD
> Such a fun game. Your goal is to break it.




an approach to this problem would be to create a new contract to send some ETH while deploying the contract 



```

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract King {
    address king;
    uint256 public prize;
    address public owner;

    constructor() payable {
        owner = msg.sender;
        king = msg.sender;
        prize = msg.value;
    }

    receive() external payable {
        require(msg.value >= prize || msg.sender == owner);
        payable(king).transfer(msg.value);
        king = msg.sender;
        prize = msg.value;
    }

    function _king() public view returns (address) {
        return king;
    }


```

