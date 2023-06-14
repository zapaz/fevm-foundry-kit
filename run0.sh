#!/bin/sh

# forge script script/SimpleCoin.s.sol:MyScript -g 20000 --with-gas-price 101000 --rpc-url calibrationnet --broadcast --verify
forge script script/SimpleCoin.s.sol:MyScript -g 20000 --with-gas-price 101000 --rpc-url fevm  --password 
