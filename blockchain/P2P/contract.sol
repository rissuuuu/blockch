pragma solidity ^0.8.2;

contract SmartInvoice {

    struct User{
        uint  dueDate;
        uint  invoiceAmount;
        address serviceProvider;
    }
    
    User user_obj;

    function payAmount(uint invoiceAmount) public {
        uint dueDate = block.timestamp;
        uint invoiceAmount = invoiceAmount;
        address serviceProvider = msg.sender;
                       user_obj=User({dueDate:dueDate,invoiceAmount:invoiceAmount,
                       serviceProvider:serviceProvider});
                       
    }
    function getUser() public returns (uint,uint,address){
            return (user_obj.dueDate,user_obj.invoiceAmount,user_obj.serviceProvider);
        }
}