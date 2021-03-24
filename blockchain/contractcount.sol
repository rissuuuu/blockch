contract Counter{
    uint public count;
    event senderlogger(address);
    
    constructor (){
    count=0;
    }
    
    function getCount() public view returns (uint){
        return count;
    }
    
    function incrementCount() public{
        count=count+1;
    }
    
    function sender() public view returns (address){
        return msg.sender;
    } 
    
}