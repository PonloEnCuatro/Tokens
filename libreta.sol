// SPDX-License-Identifier: MIT
/*

Este contrato guarda los siguientes datos en la blockchain
- nombre
- correo electronico
- numero de telefono

En numeros

*/
pragma solidity 0.8.24;

contract libreta{
    string nombre = "Pablo Perez";

    function guardar_nombre(string memory _nombre) public {
        nombre = _nombre;
    }

    function leer_nombre() public view returns (string memory){
        return nombre;
    }
}