// pragma = only the compiler cares
// ^0.4.17 = version 0.4.17 or greater
pragma solidity ^0.4.17;

contract Adoption {
    // an array of ethereum addresses (20 bytes each)
    address[16] public adopters;

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15);
        // add the sender's address to the adopters array
        adopters[petId] = msg.sender;
        // return the petId to confirm address position
        return petId;
    }

    // view disallows modification of state
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}
