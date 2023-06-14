// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";

import {DeployLite} from "lib/forge-deploy-lite/script/DeployLite.sol";
import {SimpleCoin} from "src/basic-solidity-examples/SimpleCoin.sol";

contract DeploySimpleCoin is DeployLite {
    function deploySimpleCoin() public returns (address simpleCoin) {
        vm.startBroadcast();

        simpleCoin = address(new SimpleCoin());

        vm.stopBroadcast();
    }

    function run() public virtual {
        deploy("SimpleCoin");
    }
}
