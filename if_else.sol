// SPDX-License-Identifier: MIT

/*
Contrato que solo dejua entrar si es mayor de esdad
*/

pragma solidity 0.8.24;

contract if_else{

    uint256 public numero;// almacenar edad
    uint256 public edad_init; //edad limite

    constructor(uint256 _edad_init){
        edad_init = _edad_init;
    }

    function establecer_numero (uint256 _numero) public {
        numero = _numero;
    }

    function mensaje () public view returns(string memory) {
        //control if else
        if(numero > edad_init) {
            return " Puedes ingresar ya que eres mayor de edad";
            //condicion secundaria
        } else if (numero == edad_init){
            return "Tambien puedes ingresar";
        }else {
            //condicion final
            return "Eres menor de edad, no puedes ingresar";
        }
    }
}