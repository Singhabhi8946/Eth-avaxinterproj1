# Eth-avaxinterproj1

## Error Handling
-Solidity provides various functions for error handling. Generally when an error occurs, the state is reverted back to its original state. 
-Other checks are to prevent unauthorized code access. Following are some of the important methods used in error handling -

## assert() 
- In case condition is not met, this method call causes an invalid opcode and any changes done to state got reverted.
- This method is to be used for internal errors.

## require() 
-In case condition is not met, this method call reverts to original state. 
This method is to be used for errors in inputs or external components.

## require(bool condition, string memory message) 
-In case condition is not met, this method call reverts to original state. 
-This method is to be used for errors in inputs or external components. It provides an option to provide a custom message.

## revert() 
-This method aborts the execution and revert any changes done to the state.
