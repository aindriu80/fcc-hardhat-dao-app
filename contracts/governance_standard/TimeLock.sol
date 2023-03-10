// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// we are waiting for a new vote to be 'executed'
// Everyond who hols the governenace token has to pay 5 tokens
// Give time to users to 'get out'  if they  don't like a governenace directive

import "@openzeppelin/contracts/governance/TimelockController.sol";

contract TimeLock is TimelockController {
  // minDelay is how long you have to wait before executing
  // proposers is the list of addresses that can propose
  // executors is the list of addresses that can execute
  constructor(
    uint256 minDelay,
    address[] memory proposers,
    address[] memory executors
  ) TimelockController(minDelay, proposers, executors) {}
}
