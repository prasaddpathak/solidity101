pragma solidity ^0.5.0;

contract C {
	function summation(uint n) public returns(uint) {
   	uint sum;
   	sum=0;
   	//write your code here
   	for(uint i =0;i<= n;i++){
   	    sum += i;
   	}
  	return sum;
	}
}