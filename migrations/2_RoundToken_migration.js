const RoundToken = artifacts.require("RoundToken");

module.exports = function (deployer) {
  deployer.deploy(RoundToken);
};