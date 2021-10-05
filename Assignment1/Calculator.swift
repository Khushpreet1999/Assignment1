//
//  Calculator.swift
//  Assignment1
//
//  Created by Khushpreet Kaur Gulati on 2021-09-29.
//

import Foundation

class Calculator{

var calString = [String]()
var choice : String = ""
var output = 0


    func push(s: String) -> [String]
    {
        
    for number in s
    {
        calString.append(String(number))
    }
    return calString
    
}
	
func cal() -> Int {
    output = 0;
    for number in calString
    {
        if Int(number) != nil
        {
        switch choice
            {
        case "+":
            output = output + Int(number)!
            
        case "-":
            output = output - Int(number)!
        case "*":
            output = output * Int(number)!
            
        case "/":
            output = output / Int(number)!
            
        
        default:
            output = output + Int(number)!
        }
        }
            else
            {
                choice = number
            }
        }
   print(calString)
   print(output)
    calString = []
    return output
    
    }
    
    
}


