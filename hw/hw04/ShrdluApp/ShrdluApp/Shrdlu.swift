//
//  Shrdlu.swift
//  ShrdluApp
//
//  Created by Bouvette Jr, Michael John on 3/12/20.
//  Copyright © 2020 C323 // mjbouvet. All rights reserved.
//

class Shrdlu{
    
    init(){
          
    }
    
    var textField : String! //text field to recieve input
    let joyWords: [String] = ["happy", "happiness", "joy", "yay", "yeah"] //Instantiation of word check lists
    let disgustWords: [String] = ["gross", "horrible", "terrible", "awful", "horrifying"]
    let fearWords: [String] = ["scared", "scary", "terror", "fright", "horror"]
    let angerWords: [String] = ["angry", "infuriated", "annoyed", "irritated", "rage"]
    let sadnessWords: [String] = ["sad", "unhappy", "depressed", "dejected", "regretful"]
    var inputStrings : [String] = [] //stores inputs
    var outputStrings : [String] = [] //stores outputs
    var joyFlag = false //these flags are used to delete duplicate hits in the lists so it doesn't print the same thing twice
    var disgustFlag = false
    var fearFlag = false
    var angerFlag = false
    var sadnessFlag = false
    var noFlag = false
    
    // ---- take a string and split it into words ---- :
    func parseInput(pUserInput: String) -> [String] {
        // first convert all letters in string to lowercase:
        let lInputLowerCase = pUserInput.lowercased()
        // then remove the "new line" at the end:
        let lInputWithoutNewline = lInputLowerCase.components(separatedBy: "\n")
        // then take all the text that found before the "new line",
        //    and use the " " space character to split it into words:
        let lInputWords = lInputWithoutNewline[0].components(separatedBy: " ")
        // return all found words placed in an array of strings:
        return lInputWords
    } // end of getWordsFromString()
    
    func oneInteraction(pInput : String) -> String{
        let tempArray = parseInput(pUserInput: pInput) //creates an array of the strings in the input
        var returnString = "" //will be the string returned
        var count = 0 //count to determine where we are in the array
        
        var testArray : [String] = [] //this will be the final array after duplicate hits in the word lists are taken care of
        for word in tempArray { //this for loop removes duplicates from multiple hits in the word list so the same thing isn't printed twice
            if !testArray.contains(word){
                if(joyWords.contains(word) && joyFlag == false){
                    testArray.append(word)
                    joyFlag = true
                }
                else if(disgustWords.contains(word) && disgustFlag == false){
                    testArray.append(word)
                    disgustFlag = true
                }
                else if(fearWords.contains(word) && fearFlag == false){
                    testArray.append(word)
                    fearFlag = true
                }
                else if(angerWords.contains(word) && angerFlag == false){
                    testArray.append(word)
                    angerFlag = true
                }
                else if(sadnessWords.contains(word) && sadnessFlag == false){
                    testArray.append(word)
                    sadnessFlag = true
                }
                else if(!joyWords.contains(word) && !disgustWords.contains(word) && !fearWords.contains(word) && !angerWords.contains(word) && !sadnessWords.contains(word) && word != "" && noFlag == false){
                    testArray.append(word)
                }
            }
        }
        print(testArray)
        for word in testArray{ //this forloop takes the list with all duplicate hits removed and returns the appropriate response
            if(joyWords.contains(word)){
                returnString.append("I'm happy that you're happy")
            }
            else if(disgustWords.contains(word)){
                returnString.append("That is disgusting")
            }
            else if(fearWords.contains(word)){
                returnString.append("That is terrifying")
            }
            else if(angerWords.contains(word)){
                returnString.append("That must have infuriated you")
            }
            else if(sadnessWords.contains(word)){
                returnString.append("I'm sorry that you are sad")

            }
            else if(!joyWords.contains(word) && !disgustWords.contains(word) && !fearWords.contains(word) && !angerWords.contains(word) && !sadnessWords.contains(word) && word != ""){
                returnString.append("I have no idea how to respond to that") //this is when the word typed is not the empty string or not in any of the lists
                noFlag = true
            }
            
            if(count < testArray.count - 1){
                returnString.append(", and ") //as long as we aren't at the last word add a conjunction to create a readable sentence
                count += 1 //increment count to keep location in array
            }
            else if(count == testArray.count - 1 && tempArray[0] != ""){
                returnString.append(".") //once the end of the list is reached and we have checked it wasn't empty from the start we finish the sentence with a period
            }

        }
        if(tempArray[0] == ""){
            returnString.append("You're not very talkative are you...") //if the input is an empty string it returns this
        }
            inputStrings.append(pInput) //add the input to the input string list
            outputStrings.append(returnString) //add the output to the output string list
        joyFlag = false; angerFlag = false; disgustFlag = false; sadnessFlag = false; fearFlag = false; noFlag = false //reset the flags for the next text entry
        return returnString
    }
    
    func getInputArray() -> [String]{
        return inputStrings //getter for the input strings array
    }
    
    func getOutputArray() -> [String]{
        return outputStrings //getter for the output array list
    }
}
