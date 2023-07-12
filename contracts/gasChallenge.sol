// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gasChallenge {
    // Fixed-size array instead of dynamic array
    uint[10] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    
    // Caching of state variables
    uint private sumOfArray;
    
    constructor() {
        // Cache the initial sum of the array
        sumOfArray = getSumOfArray();
    }

    // Function to check for the sum of the array
    function getSumOfArray() public view returns (uint256) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }
    
    // Unchecked block
    function notOptimizedFunction() public {
        unchecked {
            for (uint i = 0; i < numbers.length; i++) {
                numbers[i] = 0;
            }
        }
    }
    
    // Different for loop increment syntax
    function optimizedFunction() public {
        for (uint i = 0; i < numbers.length; ++i) {
            numbers[i] = 0;
        }
    }
    
    // Check if the sum of array equals 0
    function isSumOfArrayZero() public view returns (bool) {
        return getSumOfArray() == 0;
    }
}
