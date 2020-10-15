pragma solidity ^0.5.0;

contract Adoption {
  // Variable adopters is an array that holds 16 of type adresses
  address[16] public adopters; 

  // Adopting a pet
  function adopt(uint petId) public returns (uint) {

    // Make sure petId is within range of the adopters array
    require(petId >= 0 && petId <= 15);

    // Add the address of the person calling the contract to the array
    adopters[petId] = msg.sender;
    
    // Return ID provided as a confirmation
    return petId;
  }

  // Retrieving the adopters
  // Adding memory gives the data location of the variable
  // 'view' type functions does not modify state of the contract
  function getAdopters() public view returns (address[16] memory) {
    return adopters;
  }
}