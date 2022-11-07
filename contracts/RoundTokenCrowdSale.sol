// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/TimedCrowdsale.sol";

contract RoundTokenCrowdSale is Crowdsale ,Ownable ,CappedCrowdsale, TimedCrowdsale {

 

// Crowdsale Stages
  enum CrowdsaleStage { PreICO, ICO }
// Default to presale stage
  CrowdsaleStage public stage = CrowdsaleStage.PreICO;


 

     constructor(
        uint256 rate,            // rate, in TKNbits
        address payable wallet,  // wallet to send Ether
        IERC20 token,            // the token
        uint256 cap,             // total cap, in wei
        uint256 openingTime,     // opening time in unix epoch seconds
        uint256 closingTime      // closing time in unix epoch seconds
    )
        CappedCrowdsale(cap)
        TimedCrowdsale(openingTime, closingTime)
        Crowdsale(rate, wallet, token)
        public
    {
        // nice, we just created a crowdsale that's only open
        // for a certain amount of time
        // and stops accepting contributions once it reaches `cap`
    }

     /**
  * @dev Allows admin to update the crowdsale stage
  * @param _stage Crowdsale stage
  */
  function setCrowdsaleStage(uint _stage ,uint _setRate ) public onlyOwner  {
    if(uint(CrowdsaleStage.PreICO) == _stage) {
      stage = CrowdsaleStage.PreICO;
    } else if (uint(CrowdsaleStage.ICO) == _stage) {
      stage = CrowdsaleStage.ICO;
    }

    if(stage == CrowdsaleStage.PreICO) {
        // rate at pre ico
      _rate = _setRate;
    } else if (stage == CrowdsaleStage.ICO) {
        // rate at crowdsalestage
      _rate = _setRate;
    }
  }


    
}