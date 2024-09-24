// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Mapping {

    //definimos un mapping de un direcciones y enteros

    mapping(address => uint256) balances;

    //funcion para establecer el balance

    function setBalance(address _adr) public {
        uint256 avaxBalance = _adr.balance;
        balances[_adr] = avaxBalance;
    }

    //funcion para obtener el valor del mapping en la direccion indice

    function getBalance(address _adr) public view returns (uint256) {
        return balances[_adr];
    }

    //funcion que permite eliminar un valor del mapping

    function remove(address _adr) public {
        delete balances[_adr];
    }

    //funcion que llama otra funcion ya crada para actualizar los balances

    function updateBalanceAvax(address _adr) public {
        setBalance(_adr);
    }
    //recursividad
}