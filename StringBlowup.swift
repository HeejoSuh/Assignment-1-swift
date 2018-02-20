//
//  StringBlowup.swift
//  
// Program that returns a version of the original string as follows: 
// each digit 0-9 that appears in the original string is replaced by that many 
// occurrences of the character to the right of the digit. 
// So the string "a3tx2z" yields "attttxzzz", and "12x" yields "2xxx". 
// A digit not followed by a character (i.e. at the end of the string) 
// is replaced by nothing.
// 
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//



///cd ICS4U/Assignments/1	swiftc StringBlowup.swift	swift StringBlowup.swift


var input: String?
//need to convert input to a separate variable***************
var inputString: String = "" //need a base to work for no inputs
var outputString = ""

//need to put as character
var currentCharacter: Character
var charAfter: Character


////var characterPlace: Character    -> nope


//Getinput
print("Input a string: ")
input = readLine(strippingNewline: true)
//check if input is not null
////if (input!).isEmpty    ---> doesn't work?
if input != nil{
	inputString = input!
}else{
	print("ERROR: no string found. Try again")
}



//Get Blown-up string
if inputString.count > 1 {
	//have input string
	// for integer x from a ~ less than b, and increasing the value by 1 each time
	   //***swift counts strings from 0 !!!*******
	for char in 0...(inputString.count-1) {
		////characterPlace = char
		//need to define as a whole
		//yes this looks terrifying
		//no you can't "String" a character directly.
			
		currentCharacter = inputString[inputString.index(inputString.startIndex, offsetBy:char)]
		
		//stringIndex = input!.index(input!.startIndex, offsetBy:characterPlace)
		//then you use string![stringIndex]
    	
		//check if character is a number
		//can't check Integer(String(Character)) since integer has been renamed binaryinteger. haha what
		if (currentCharacter <= "9" && currentCharacter >= "0" ){
			//Check if it's the last value
			////if characterPlace == (input!.count-1)
			let lastCharacter = inputString[inputString.index(inputString.endIndex, offsetBy: -1)]
			if currentCharacter == lastCharacter{
				//if number is at the last place, skip it since no characters are on the right of it
			}else {
	    	    //if number is not at the last place
	    	    charAfter = inputString[(inputString.index(inputString.startIndex, offsetBy:(char+1)))]
	    	    //add that many of the following characters to string
	    	    //CAN use x..<!y
	    	    //convert chart to string to convert it to an integer *********
				for _ in 0..<Int(String(currentCharacter))! {
					outputString = outputString + String(charAfter)
				}
			}
		}else{
			//not an integer
			outputString = outputString + String(currentCharacter)
		}
	}
	print("The blown-up string is \(outputString)")	
}


