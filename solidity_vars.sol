// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract solidity_vars {

    address public block_now; //direccion del minero actual
    uint public block_diff;  //dificultad del bloque actual
    uint public block_num; //numero de  bloque de la cadena actual
    bytes32 public block_hash; //tipo de dato para el block hash
    uint public time_stamp; //marca del tiempo actual en formato epoch
    uint public gas_left; //consultar gas restante del contrato
    address public sender; //quien fue la persona quien llamo al contrato
    bytes4 public sig_id; //primeros 4 bytes de la llamada de la funcion
    uint public gas_limit; //valor limite que puede llegar a tener el gas al momento de ejecutar la transaccion

    function update_params() public {
        block_now = block.coinbase;
        block_diff = block.prevrandao;
        block_num = block.number;
        time_stamp = block.timestamp;
        gas_left = gasleft();
        sender = msg.sender;
        sig_id = msg.sig;
        gas_limit = block.gaslimit;
    }

}