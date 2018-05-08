var Migrations = artifacts.require("./Migrations.sol");
var PoolParty_token = artifacts.require("./PoolParty_token.sol");
var PoolParty_Payroll = artifacts.require("./PoolParty_Payroll.sol");
var utils = artifacts.require("./utils.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(PoolParty_token);
  deployer.deploy(PoolParty_Payroll);
  deployer.deploy(utils);
};
