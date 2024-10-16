// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Mother {
   // uint256 public NUMBER =4747;
    address child;


    function setChild(address offspring) external {
        child = offspring;
    }

    function callChild(uint256 _newNo) public{
        bytes memory calldatas = abi.encodeWithSelector(IChild.setNo.selector, _newNo);
        // (bool success, ) = child.call{value: 0 ether}(calldatas);
        (bool success, ) = child.delegatecall(calldatas);
        require(success);
       // IChild(child).setNo(_newNo);
    }
}

interface IChild {
    function setNo(uint256 _newNo) external;
}
