// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.0;

import "src/forge/Script.sol";
import "src/Bearing.sol";

contract BearingScript is Script {

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PK");
        vm.startBroadcast(deployerPrivateKey);

        Bearing bearing = new Bearing();

        // silences warning.
        bearing;

        vm.stopBroadcast();
    }
}