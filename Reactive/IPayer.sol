// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IPayer {
    // @dev Make sure to check the msg.sender
    function pay(uint256 amount) external;
}
