// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract EtherConverter {
    // Variable to store the total received ether
    uint256 public totalEtherReceived;

    // Function to receive ether
    receive() external payable {
        // Increment totalEtherReceived with the received amount
        totalEtherReceived += msg.value;
    }

    // Function to get the total value in wei
    function getValueInWei() public view returns (uint256) {
        return address(this).balance;
    }

    // Function to get the total value in ether
    function getValueInEther() public view returns (uint256) {
        return address(this).balance / 1 ether;
    }

    // Function to get the total value in gwei
    function getValueInGwei() public view returns (uint256) {
        return address(this).balance / 1 gwei;
    }
}
