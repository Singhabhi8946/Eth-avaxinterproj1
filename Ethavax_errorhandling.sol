
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
