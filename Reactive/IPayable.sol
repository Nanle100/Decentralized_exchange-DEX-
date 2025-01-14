// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IPayable {
    // @notice Allows contracts to pay their debts and resume subscriptions.
    receive() external payable;

    // @notice Allows reactive contracts to check their outstanding debt.
    // @param _contract Reactive contract's address.
    function debt(address _contract) external view returns (uint256);
}
