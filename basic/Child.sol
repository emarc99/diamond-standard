// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Child {

    uint256 public NUMBER =4747;



    function setNo(uint256 _newNo) public  {
        NUMBER = _newNo;
    }
}