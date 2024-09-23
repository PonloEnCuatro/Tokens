// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract array{

    //maneras para hacer un array

    uint256 [] public arr;
    uint256 [] public arr2 = [22, 33, 44, 55];

    //inizializar un arrai fijo( todo los elementos en el array va n a ser iguales a 0

    uint256 [10] public arr3;

    //me trae un elemento en particular

    function get(uint256 _i) public view returns (uint256) {
        return arr2[_i];
    }

    //trae elementos al array (todos)
    function getArr() public view returns (uint256[] memory) {
        return arr2;
    }

    //meter nuevo valor en el array
    function push(uint256 _i) public {
        arr2.push(_i);
    }

    //el pop borra el ultimo comentario del array
    function pop() public  {
        arr2.pop();
    }

    //este codigo regresa la longitud del array

    function getLength() public view returns (uint256){
        return arr2.length;
    }

    //eliminar un elemento en particular
    function remove(uint256 _index) public {
        delete arr2[_index];
    }
}