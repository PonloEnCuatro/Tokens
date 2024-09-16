// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract libreta{
    string nombre = "Pablo Perez";
    string correo = "nn@mail.com";
    uint256 telefono = 1234567890;

    function guardar_nombre(string memory _nombre) public {
        nombre = _nombre;
    }

    function leer_nombre() public view returns (string memory){
        return nombre;
    }

    function guardar_correo(string memory _correo) public {
        correo = _correo;
    }

    function leer_correo()public view returns (string memory) {
        return correo;
    }

    function guardar_telefono(uint256 _telefono) public {
        telefono = _telefono;
    }

    function leer_telefono() public view returns (uint256) {
        return telefono;
    }
}