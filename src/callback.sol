// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../Reactive/AbstractCallback.sol";

contract L1Callback is AbstractCallback {
    event CallbackReceived(
        address indexed origin,
        address indexed sender,
        address indexed reactive_sender
    );

    constructor() payable AbstractCallback(address(0)) {}

    receive() external payable {}

    function callback(address sender) external {
        emit CallbackReceived(tx.origin, msg.sender, sender);
    }
}
