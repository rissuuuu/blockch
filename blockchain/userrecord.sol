import “stringUtils.sol”;

contract UserRecords{

    enum genderType {male,female};

    struct user{
        string name;
        genderType gender;
    }

    user user_obj

    function getGenderfromString (string gender) internal returns (genderType){
        if (stringUtils.eqial(gender,"male")){
            return genderType.male;
        }
        else{
            return genderType.female;
        }
    }
    
    function getGendertoString (genderType gender) internal returns (string){
        if (gender==genderType.male){
            return "male";
        }
        else{
            return "female";
        }

    function setUser(string name, string gender) public {
        genderType gender_type=getGenderfromString(gender);
        user_obj=user({name:name,gender:gender_type});
    
    }
    
    function getUser() public returns (string,string){
        return (user_obj.name,getGendertoString(user_obj.gender));
    }

}