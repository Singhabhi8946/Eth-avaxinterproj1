# Eth-avaxinterproj1

## Error Handling
- Solidity provides various functions for error handling. Generally when an error occurs, the state is reverted back to its original state. 
- Other checks are to prevent unauthorized code access. Following are some of the important methods used in error handling -

## assert() 
- In case condition is not met, this method call causes an invalid opcode and any changes done to state got reverted.
- This method is to be used for internal errors.

## require() 
- In case condition is not met, this method call reverts to original state. 
- This method is to be used for errors in inputs or external components.

## require(bool condition, string memory message) 
- In case condition is not met, this method call reverts to original state. 
- This method is to be used for errors in inputs or external components. It provides an option to provide a custom message.

## revert() 
- This method aborts the execution and revert any changes done to the state.


## Program
```

//SPDX-License-Identifier: MIT 
pragma solidity 0.8.26;

contract ErrorHandlingContract {

    uint public value;
    
    function Value(uint _value) public {
        require(_value >= 0, "Value must be greater than 0.");

        assert (_value != value);

        value= _value;

    }
    
    function conductDivison(uint _numer, uint _denom) public pure returns (uint) {
        require (_denom !=0, "Cannot divide by zero.");
        
        if (_numer % _denom != 0) {
            revert("Numerator must be divisible by denominator.");
            
        }
        return _numer / _denom;

    }

}

```


## Author 
Abhinav Singh

## Lisence
This project is licensed under the MIT License - see the LICENSE.md file for details


