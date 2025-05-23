// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Reward {
    mapping(address => uint256) public balance;

    function mint(address to, uint256 amount) external {
        balance[to] += amount;
    }
}
