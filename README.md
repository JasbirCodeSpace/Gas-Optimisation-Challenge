# Gas Optimisation Bounty Challenge

In this challenge, the goal is to optimize a smart contract by applying various gas optimization techniques to reduce the cost of deploying and executing the contract.

## Smart Contract Changes

The following gas optimization techniques have been implemented in the `gasChallenge.sol` smart contract:

1. **Fixed Size Arrays over Dynamic Arrays**: The `numbers` array has been changed to a fixed-size array (`uint[10]`) instead of a dynamic array (`uint[]`) to reduce gas costs associated with dynamic memory allocation.

2. **Caching of State Variables**: The sum of the array elements (`sumOfArray`) is cached in a private state variable during contract deployment. This avoids recalculating the sum every time the `isSumOfArrayZero` function is called, reducing gas costs.

3. **Unchecked Block**: The `notOptimizedFunction` uses the `unchecked` block to suppress runtime checks for overflow and underflow. This can save gas if you're certain the operations won't result in overflow/underflow.

4. **Different For Loop Increment Syntax**: The `optimizedFunction` uses the `++i` increment syntax instead of `i++`. This can be slightly more gas-efficient as it avoids the creation of a temporary variable during the increment.

## Unit Test

The `test_gasChallenge.js` unit test file has been updated to test the gas optimizations and ensure the functionality of the smart contract is preserved. The following test cases have been added:

1. **Compute Gas**: This test case checks if the optimized function `optimizedFunction` consumes less gas than the original function `notOptimizedFunction`. It verifies that the optimization techniques have successfully reduced gas costs.

2. **Check Sum Of Array**: This test case checks if the sum of the array elements is zero after executing the optimized function `optimizedFunction`. It calls the `isSumOfArrayZero` function and asserts that the returned value is `true`.

## Getting Started

To get started with the Gas Optimisation Bounty Challenge, follow these steps:

1. Clone the GitHub repository: [link-to-repository](https://github.com/JasbirCodeSpace/Gas-Optimisation-Challenge)

2. To get started, clone this repository to your local machine and navigate to the project directory. Next, install the required dependencies.

` git clone https://github.com/JasbirCodeSpace/Gas-Optimisation-Challenge.git
cd gas_challenge && npm install
`

4. Run the unit tests using a testing framework like Hardhat or Truffle.

`npx hardhat test`

5. Verify that the gas consumption is reduced in the optimized function and the sum of the array elements is zero after optimization.
