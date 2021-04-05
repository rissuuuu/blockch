pragma solidity ^0.8.2;

contract SmartInvoice {

    struct Payment{
        uint  dueDate;
        uint  invoiceAmount;
        address from;
        address to;
        
    }
    
    Payment payment;

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
}