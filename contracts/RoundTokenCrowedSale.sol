// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";

contract RoundTokenCrowedSale is Crowdsale {

// Crowdsale Stages
  enum CrowdsaleStage { PreICO, ICO }
// Default to presale stage
  CrowdsaleStage public stage = CrowdsaleStage.PreICO;

    constructor (uint256 rate, address payable wallet, IERC20 token) 
     Crowdsale(rate, wallet, token) public 
     {

     }

     /**
  * @dev Allows admin to update the crowdsale stage
  * @param _stage Crowdsale stage
  */
  function setCrowdsaleStage(uint _stage) public onlyOwner {
    if(uint(CrowdsaleStage.PreICO) == _stage) {
      stage = CrowdsaleStage.PreICO;
    } else if (uint(CrowdsaleStage.ICO) == _stage) {
      stage = CrowdsaleStage.ICO;
    }

    if(stage == CrowdsaleStage.PreICO) {
        // rate at pre ico
      rate = 500;
    } else if (stage == CrowdsaleStage.ICO) {
        // rate at crowdsalestage
      rate = 250;
    }
  }


    
}