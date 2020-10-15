pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
 // The address of the adoption contract to be tested
  Adoption adoption = Adoption(DeployedAddresses.Adoption());

 // The id of the pet that will be used for testing
  uint expectedPetId = 8;

 //The expected owner of adopted pet is this contract
  address expectedAdopter = address(this);


 // Testing the adopt() function
  function testUserCanAdoptPet() public {
    uint returnedId = adoption.adopt(expectedPetId);
 // Compare the return value to the ID that was passed
    Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned.");
  }



}