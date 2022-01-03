// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 favNum;  //
    bool status;

    struct People {
        uint256 favNum;
        string name;
    }

    People[] public person ;

    mapping (string => uint256) public nameToFavNum;

    function store(uint256 _favNum) public{
        favNum = _favNum;
    }
    function retrive() public view returns(uint256)  {
        return favNum;
    }

    function addPerson(string memory _name, uint256 _favNum) public{
        person.push(People(_favNum,_name));
        nameToFavNum[_name]=_favNum;
    }

}
