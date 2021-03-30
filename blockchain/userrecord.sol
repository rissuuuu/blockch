pragma solidity ^0.8.2;
contract UserRecords{

    enum genderType {male,female}
    
    address[] public senders;
    
    struct user{
        string name;
        genderType gender;
    }

    user user_obj;
    
    // function compareStrings(string  a, string  b)  returns (bool) {
    // return (keccak256(bytes(a)) == keccak256(bytes(b)));

    // }

    function getGenderFromString(string memory gender) internal returns(genderType) {
    if(keccak256(bytes(gender)) == keccak256(bytes("male"))) {
        return genderType.male;
    } else {
        return genderType.female;
    }
}
    
    function getGendertoString (genderType gender) internal returns (string memory){
        if (gender==genderType.male){
            return "male";
        }
        else{
            return "female";
        }
    }

    function setUser(string memory name, string memory gender) public {
        genderType gender_type = getGenderFromString(gender);
        user_obj=user({name:name,gender:gender_type});
        senders.push(msg.sender);
    
    }
    
    function getUser() public returns (string memory,string memory){
        return (user_obj.name,getGendertoString(user_obj.gender));
    }
    
    function getAddresses() public returns (address[] memory){
        return senders;
    }

}