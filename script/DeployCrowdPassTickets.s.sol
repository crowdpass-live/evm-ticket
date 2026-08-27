// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.30;

import {AddressesAndFees} from "@ticket-script/helpers/AddressesAndFees.sol";
import {DeployCrowdPassTicketsHelper} from "@ticket-script/helpers/DeployCrowdPassTicketsHelper.sol";
import {CrowdPassInit} from "@ticket/inits/CrowdPassInit.sol";
import {Script} from "forge-std/Script.sol";

contract DeployCrowdPassTickets is Script, DeployCrowdPassTicketsHelper {
    function run() public returns (address crowdPass_) {
        vm.startBroadcast();

        // Deploy CrowdPassTickets diamond
        crowdPass_ = _getCrowdPassTickets();

        vm.stopBroadcast();
    }
}
