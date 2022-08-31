// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

contract TodoList {

    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function creatTolist(string calldata _text) external {
        Todo memory todo = Todo(
            {
                text:_text,
                completed:false
            }
        );

    todos.push(todo);

    }

    function updateTodoList(uint _index ,string calldata _text) external {

        todos[_index].text = _text;
    }

    function updateCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }

    function getTodoList(uint _index) external view returns(string memory, bool) {

        Todo memory _todo = todos[_index]; 
        return (_todo.text, _todo.completed);
    }

}