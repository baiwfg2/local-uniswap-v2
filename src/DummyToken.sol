// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.8.5;

import {ERC20} from "solmate/tokens/ERC20.sol";

contract DummyToken is ERC20("Dummy", "DMY", 18) {
    constructor() {
        _mint(msg.sender, 1000e18);
    }
}
