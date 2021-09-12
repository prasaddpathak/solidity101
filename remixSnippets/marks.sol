pragma solidity 0.5.0;

contract C {
	struct Marks {
    	//write your code here
    	string subject;
    	uint marks;
	}
	Marks[] private marks;

	//write the function addMarks here
	function addMarks(string memory s, uint m) public {
        marks.push(Marks({
            subject: s,
            marks:m
        }));
	}
	
	function calcPer() checkM() public returns(uint256) {
        // uint subCount =0;
        uint sum = 0;
        for(uint i = 0;i<marks.length;i++){
            sum += marks[i].marks;
        }
        return (sum/marks.length);
	}
	
	modifier checkM() {
        require(marks.length > 0 );
        _;
    }
	
    
}