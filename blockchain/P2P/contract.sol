pragma solidity ^0.8.2;
contract BuyerRecords{
    uint public dueDate;
    uint public invoiceAmount;
    address serviceProvider;
    
    
    struct Buyer{
        string name;
        int buyer_property_id;
        string seller_name;
        int seller_energy_id;
        int seller_property_id;
        
    }

   constructor(uint _invoiceAmount) public {
    dueDate = block.timestamp + 200;
    invoiceAmount = _invoiceAmount;
    serviceProvider = msg.sender;
  }
    

    

}