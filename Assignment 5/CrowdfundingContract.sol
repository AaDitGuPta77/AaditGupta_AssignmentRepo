// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Crowdfunding {
    struct Campaign {
        address payable creator;
        uint goal;
        uint deadline;
        uint fundsRaised;
        bool finalized;
        mapping(address => uint) contributions;
    }

    Campaign[] public campaigns;

    function createCampaign(uint _goal, uint _durationInDays) public {
        Campaign storage newCampaign = campaigns.push();
        newCampaign.creator = payable(msg.sender);
        newCampaign.goal = _goal;
        newCampaign.deadline = block.timestamp + (_durationInDays * 1 days);
        newCampaign.fundsRaised = 0;
        newCampaign.finalized = false;
    }

    function contribute(uint _campaignId) public payable {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp < campaign.deadline, "Campaign is over");
        require(msg.value > 0, "Contribution must be more than 0");

        campaign.contributions[msg.sender] += msg.value;
        campaign.fundsRaised += msg.value;
    }

    function finalizeCampaign(uint _campaignId) public {
        Campaign storage campaign = campaigns[_campaignId];
        require(block.timestamp >= campaign.deadline, "Campaign is not over yet");
        require(!campaign.finalized, "Campaign already finalized");

        if (campaign.fundsRaised >= campaign.goal) {
            campaign.creator.transfer(campaign.fundsRaised);
        } else {
            for (uint i = 0; i < campaigns.length; i++) {
                address contributor = campaigns[i].creator;
                uint contribution = campaign.contributions[contributor];
                if (contribution > 0) {
                    payable(contributor).transfer(contribution);
                    campaign.contributions[contributor] = 0;
                }
            }
        }
        campaign.finalized = true;
    }
}
