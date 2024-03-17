// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TodoList {
    
    struct Todo {
        string task;
        bool completed;
    }

    // Dynamic array of 'Todo' structs
    Todo[] public todos;

    function addTask(string memory _task) public {
        todos.push(Todo({
            task: _task,
            completed: false
        }));
    }

    function completeTask(uint _index) public {
        require(_index < todos.length, "Task index out of bounds");
        todos[_index].completed = true;
    }
}
