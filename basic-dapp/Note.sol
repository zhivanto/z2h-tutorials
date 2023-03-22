// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Note{
    // user can write and read own note 
    string public note;
    //types of access modifier: internal, external, public, private
    //переменная состояния public -> создаеются геттер 

    event NoteAdded(address noteSender, string addedNote);

    //Для всех непримитивных типов локальных переменных используем memory
    // _ используется для локальных переменных и внутренних функций 
    function setNote(string memory _note) public{
        note = _note;
        emit NoteAdded(msg.sender, _note);
    }


    //state mutability in function -> pure, view (only read), non payable (default), payable 
    function getNote() public view returns (string memory){
        return note;
    }

}