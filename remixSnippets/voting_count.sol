pragma solidity ^0.5.0;

contract voting_count {
    
    //Mapping to store vote count for each candidate
    mapping (address => uint8) private votes;
    mapping (address => bool) private voterMapping;
    address public owner;
    address[] public candidates;
    
    constructor(address[] memory candList) public {
        owner = msg.sender;
        candidates = candList;
    }
    
    function addVote(address cand) isValid(cand) alreadyVoted(msg.sender) public {
        votes[cand] += 1;
        voterMapping[msg.sender] = true;
    }
    
    function countVote(address cand) isValid(cand) isOwner(msg.sender) public view returns (uint8) {
        return votes[cand];
    }
    
    modifier alreadyVoted(address requestor){
        require(voterMapping[requestor] == false, "You have already voted!");
        _;
    }
    
    modifier isValid(address cand){
        require(checkCandidate(cand), "Invalid Candidate!");
        _;
    }
    
    modifier isOwner(address requestor){
        require(msg.sender == owner, "Only Owner can Request for count!");
        _;
    }
    
    function checkCandidate(address cand) private view returns (bool) {
        for(uint i= 0;i < candidates.length ;i++){
            if(candidates[i]== cand)
                return true;
        }
        return false;
    }
}