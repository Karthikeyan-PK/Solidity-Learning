// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory is SimpleStorage{  //Inheritance is applied

    SimpleStorage[] public simpleStorageArray;

    function creatSimpleStorageContract() public{
        SimpleStorage simpleStorage =new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _ssIndex, uint256 _ssNumber) public { //sf-StoreFactory and ss-SimpleStorage
        SimpleStorage(address(simpleStorageArray[_ssIndex])).store(_ssNumber); 
        //Address calling along with the store function of SimpleStorage.sol file
    }

    function sfRetrive(uint256 _ssIndex) view public returns(uint256){
        SimpleStorage(address(simpleStorageArray[_ssIndex])).retrive();
        //Address calling along with the retrive function of SimpleStorage.sol file
    }
}
