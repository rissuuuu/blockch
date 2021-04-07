pragma solidity ^0.8.2;

contract SmartInvoice {
    
    address owner;
    Payment payment;
    uint public amount;
    
    constructor() public{
        owner=msg.sender;
        }

    struct Payment{
        uint  dueDate;
        uint  invoiceAmount;
        address from;
        address to;
        
    }
    
    function payAmount(uint invoiceAmount,address to) public {
        uint dueDate = block.timestamp;
        uint invoiceAmount = invoiceAmount;
        address to = to;
        address from = msg.sender;
        
                       payment=Payment({dueDate:dueDate,invoiceAmount:invoiceAmount,
                       from:from,
                       to:to});
                       
    }
    function getUser() public returns (uint,uint,address,address){
            return (payment.dueDate,payment.invoiceAmount,payment.from,
            payment.to);
        }
        
    function payme () public payable{
        amount+=msg.value;
    }
}