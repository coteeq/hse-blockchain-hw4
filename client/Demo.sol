pragma solidity >=0.5.8;

contract Demo {
    event OperationAdd(string key, string name);
    event OperationPop(string key, string name);

    struct Person {
        string Name;
        uint8 Age;
        uint16 Height;
    }

    mapping(string => Person) public persons;

    function add(string calldata key, Person calldata person) external {
        persons[key] = person;
        emit OperationAdd(key, person.Name);
    }

    function pop(string calldata key) external {
        emit OperationPop(key, persons[key].Name);
        delete persons[key];
    }
}
