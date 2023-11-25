// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract MathOperations {
    // Constructor
    constructor() {
        // Constructor can be left empty or initialized with any setup logic
    }

    // Function to add two numbers
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Function to subtract two numbers
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        require(a >= b, "Subtraction result cannot be negative");
        return a - b;
    }

    // Function to multiply two numbers
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // Function to divide two numbers
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Cannot divide by zero");
        return a / b;
    }
}
