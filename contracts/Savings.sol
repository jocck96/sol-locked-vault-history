// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Savings {
    mapping(address => uint256) public savings;
    uint256 public unlockTime;
    
    constructor(uint256 _unlockTime) {
        unlockTime = _unlockTime;
    }
    
    function deposit() external payable {
        savings[msg.sender] += msg.value;
    }
}
