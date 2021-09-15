pragma solidity ^0.8.7;

contract BKLMSigs {

    // Defining a function to return
    // the modulus value
    function central(int x, int q) pure public returns (int) 
    {
        int bd = (q-1)/2;
        int tmp = x % (2*bd+1);
        if (tmp > bd) 
        {
            tmp -= (2*bd+1);
        }
       
        return tmp;
    }
    
    function arrCentral(int[] calldata arr, int q) pure public returns (int[] memory)
    {
        int[] memory res;
        for (uint i = 0; i < arr.length; i++)
        {
            res[i] = central(arr[i], q);
        }
        return res;
    }
    
    function polyAdd(int[] calldata p1, int[] calldata p2, int q) pure public returns (int[] memory) 
    {
        int[] memory res;
        
        for (uint i = 0; i < p1.length; i++)
        {
            res[i] = p1[i] + p2[i];
        }
        
        int[] memory out = arrCentral(res, q);
        
        return out;
        
     }
     
     function polyMul(int[] calldata p1, int[] calldata p2, int q) pure public returns (int[] memory) 
    {
        int[] memory res;
        
        for (uint i = 0; i < p1.length; i++)
        {
            res[i] = p1[i] * p2[i];
        }
        
        int[] memory out = arrCentral(res,q);
        
        return out;
    }
    
    
}
