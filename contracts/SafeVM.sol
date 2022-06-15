// SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

import "./VM.sol";

abstract contract SafeVM is VM {

    /// Not allow delegatecall to make the contract storage immutable and safer for
    /// execution.
    function _execute(bytes32[] calldata commands, bytes[] memory state)
      internal returns (bytes[] memory)
    {
        return _execute(commands, state, false);
    }
    
}

