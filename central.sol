pragma solidity ^0.8.7;

contract Central {
    
   // Declaring state variables
    int x ;
    int q ;
      
    // Defining a function
    // to set the value of
    // the first variable
    function integer(int val) public 
    {
        x = val;
    }
      
    // Defining a function
    // to set the value of
    // the second variable
    function mod(int y) public 
    {
        q = y;
    }
      
    // Defining a function to return
    // the modulus value
    function Modulo() view public returns (int) 
    {
        int bd = (q-1)/2;
        int tmp = x % (2*bd+1);
        if (tmp > bd) 
        {
            tmp -= (2*bd+1);
        }
        
        
        return tmp;
    }
    
}
