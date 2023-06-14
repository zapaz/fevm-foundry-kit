// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {DeployDealClient} from "script/deploy/DeployDealClient.s.sol";
import {DeploySimpleCoin} from "script/deploy/DeploySimpleCoin.s.sol";

contract DeployAll is DeployDealClient, DeploySimpleCoin {
    function run() public override(DeployDealClient, DeploySimpleCoin) {
        deploy("SimpleCoin");
        deploy("DealClient");
    }
}
