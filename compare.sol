pragma solidity ^0.5.0;

contract C {
	function comparison(uint a, uint b) public returns(uint256) {
   	uint c;
   	if (a>b)
   	    c = a;
   	else
   	    c = b;
  	return c;
	}
}