//SPDX-License-Identifier: MIT
 pragma solidity  0.8.26;


    contract ReceiveEther{

        event EtherRecieved(uint256 valueInWei, uint256 valueInGwei, uint256 valueInEther);
         receive () external payable {
         require(msg.value > 0, "Please send some ether");

         

         uint256 valueInWei = msg.value;

         uint256 valueInGwei = valueInWei / 1e9;

         uint256 valueInEther = valueInWei / 1e18;

          emit EtherRecieved (valueInWei, valueInGwei, valueInEther);
         }
    }