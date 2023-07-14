// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

error sameValue();
error onlyOwner();

contract simpleStorage {

    uint256 public value; //Do not set 0 manually it wastes gas!
    // address public immutable owner; //CANNOT BE SET IN ASSEMBLY!
    address public owner; 

    event valueUpdated(); // keccak256(abi.encodePacked(setEvent())) = 0x24a4f809cc1bf5b0f3c16b615535b56a0b583b1630e06e32b46b759b8088a95d

    constructor() {
        value = block.timestamp;
        owner = msg.sender;
    }

    function setValue(uint256 x) public {
        if (x == value)  { revert sameValue(); }
        value = x;
        emit valueUpdated();
    }

    function ownerSet() public {
        if(msg.sender != owner){revert onlyOwner();}
        value = block.timestamp;
        emit valueUpdated();
    }

}