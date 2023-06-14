// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.11;

import "@forge-std/Script.sol";
import "src/basic-solidity-examples/SimpleCoin.sol";

contract MyScript is Script {
    function run() external {
        // uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        // address yourAddress = vm.addr(deployerPrivateKey);
        // vm.startBroadcast(deployerPrivateKey);
        address yourAddress = vm.envAddress("ETH_FROM");
        console.log("run ~ yourAddress:", yourAddress);
        vm.deal(yourAddress, 1 ether);

        console.log("Your balance is: ", yourAddress.balance);
        vm.startBroadcast(yourAddress);
        console.log("Your balance is: ", yourAddress.balance);

        SimpleCoin coin = new SimpleCoin();

        // Do whatever you want!

        uint256 balance = coin.getBalance(yourAddress);
        console.log("Your coin balance is: ", balance);

        bool result = coin.sendCoin(yourAddress, 100);
        console.log("Coin successfully sent: ", result);

        balance = coin.getBalance(yourAddress);
        console.log("Your new coin balance is: ", balance);

        vm.stopBroadcast();
    }
}
