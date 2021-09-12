pragma solidity ^0.5.0;

contract Hospital{
	struct Room{
    	//complete the struct
    	bytes32 name;
    	string occupant;
    	bool occupied;
	}
	Room[] public rooms;
    
	constructor (bytes32[] memory names) public{
    	//complete the constructor
    	for (uint i=0;i<names.length;i++){
    	   rooms.push(Room({
                name:names[i],
                occupied:false,
                occupant:"none"
            }));
    	}    
	}
	function assignRoom(bytes32 roomName, string memory patientName) public returns(string memory){
        for(uint i=0;i<rooms.length;i++){
            if(rooms[i].name==roomName){
                require(rooms[i].occupied != true, "Room already occupied");
                rooms[i].occupant=patientName;
                rooms[i].occupied=true;
                return "assigned";
            }
        }
    }
    
}
