const { ethers } = require("hardhat");
const { expect } = require("chai");

describe("Deploy Gas Challenge Contract", () => {
  let gas_contract;

  beforeEach(async () => {
    const gas_challenge_contract = await ethers.getContractFactory("gasChallenge");
    gas_contract = await gas_challenge_contract.deploy();
    await gas_contract.deployed();
  });

  describe("Compute Gas", () => {
    it("Should return lower gas", async () => {
      await gas_contract.notOptimizedFunction();
      await gas_contract.optimizedFunction();
    });
  });

  describe("Check Sum Of Array", () => {
    it("Should return true if sum of array is 0", async () => {
      const isSumZero = await gas_contract.isSumOfArrayZero();
      expect(isSumZero).to.be.false;
    });
  });
});
