// SPDX-License-Identifier: MIT
// Contrato de saludo dinamico en solidity

//0xC9c2188d59312D3eE1d5a8406B0Bb0d82d83Cd4B

pragma solidity 0.8.24;

contract saludo_dinamico {

    string saludo_d = "hola dinamico";
    string public saludo_estatico = "hola estatico";

    function leer_saludo () public view returns (string memory) {
        return saludo_d;
    }

    function guardar_saludo (string memory nuevo_saludo) public {
        saludo_d = nuevo_saludo;
    }

}