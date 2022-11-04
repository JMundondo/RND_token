const RoundToken = artifacts.require("./RoundToken.sol");
const RoundTokenCrowdsale = artifacts.require("./RoundTokenCrowdsale.sol");

const duration = {
  seconds: function (val) { return val; },
  minutes: function (val) { return val * this.seconds(60); },
  hours: function (val) { return val * this.minutes(60); },
  days: function (val) { return val * this.hours(24); },
  weeks: function (val) { return val * this.days(7); },
  years: function (val) { return val * this.days(365); },
};

/*const ether = (n) => new web3.BigNumber(web3.toWei(n, 'ether'));

const duration = {
  seconds: function (val) { return val; },
  minutes: function (val) { return val * this.seconds(60); },
  hours: function (val) { return val * this.minutes(60); },
  days: function (val) { return val * this.hours(24); },
  weeks: function (val) { return val * this.days(7); },
  years: function (val) { return val * this.days(365); },
};

module.exports = async function(deployer, accounts) {


  await deployer.deploy(RoundToken);
  const deployedToken = await RoundToken.deployed();

  const latestTime = (new Date).getTime();

  const _rate           = 500;
  const _wallet         = accounts[0]; // TODO: Replace me
  const _token          = deployedToken.address;
  const _openingTime    = latestTime + duration.minutes(1);
  const _closingTime    = _openingTime + duration.weeks(1);
  const _cap            = ether(100);


  await deployer.deploy(
    RoundTokenCrowdsale,
    _rate,
    _wallet,
    _token,
    _cap,
    _openingTime,
    _closingTime,
   
  );

  return true;
};*/
module.exports =  async function (deployer ,accounts) {
  await deployer.deploy(RoundToken);
  const deployedToken = await RoundToken.deployed();
  const latestTime = (new Date).getTime();

const _rate           = 500;
const _wallet         = '0x98428f27787200b8bC20E62A4a5670f97D177d03'; // TODO: Replace me
const _token          = deployedToken.address;
//const _openingTime    = latestTime + duration.minutes(1);
const _openingTime    = latestTime ;
const _closingTime    = _openingTime + duration.weeks(1);
const _cap            = 1190401570;

await deployer.deploy(
  RoundTokenCrowdsale,
  _rate,
  _wallet,
  _token,
  _cap,
  _openingTime,
  _closingTime,
 
);
};

