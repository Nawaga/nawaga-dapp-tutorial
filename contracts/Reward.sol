// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Reward {
    mapping(address => uint256) public rewards;

    event RewardGiven(address indexed user, uint256 amount);

    function giveReward(address user, uint256 amount) public {
        rewards[user] += amount;
        emit RewardGiven(user, amount);
    }

    function checkReward(address user) public view returns (uint256) {
        return rewards[user];
    }
}
