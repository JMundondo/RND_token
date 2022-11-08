const RoundToken = artifacts.require("./RoundToken.sol");
const RoundTokenCrowdSale = artifacts.require("./RoundTokenCrowdSale.sol");

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
  const msseconds = (new Date).getTime();
  // divided to get the just seconds
  //const latestTime = Math.floor( msseconds / 1000);


const _rate           = 7904; // this will set our token at 0.20USD each
const _wallet         = '0x83AeE8096aEc608De07856413c708e17D2bA769b'; // TODO: Replace me
const _token          = deployedToken.address;
//const _openingTime    = latestTime + duration.minutes(1);
//const _openingTime    = msseconds ;
//const _closingTime    = _openingTime + duration.weeks(1);


await deployer.deploy(
  RoundTokenCrowdSale,
  _rate,
  _wallet,
  _token

 
);
};

