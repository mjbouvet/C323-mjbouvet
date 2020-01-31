// C323 Mobile App Development - Mitja Hmeljak Spring 2020
//
//  examples in the Swift programming language
//
//  Note: the following Swift code will run correctly
//        from swift command-line
//
import Foundation     // for random numbers with arc4random_uniform()


// method returning a positive integer, within bounds:
//
func randRange (aMin: UInt32 , aMax: UInt32) -> UInt32 {
    return aMin + arc4random_uniform(aMax - aMin + 1)
}

var numberToBeGuessed = randRange(aMin: 0, aMax: 20)
var originalNumber = randRange(aMin: 0, aMax: 20)
var flag = false
var count = 0
// example for getting user input from command-line,
//    using the readLine() method, which exists from Swift 2 onward:
while(flag == false){
    count += 1
    print("This is your \(count) guess,  Please enter an integer:")
    var myText = readLine()!
    var integ = Int(myText)
    if(integ! < Int(numberToBeGuessed)){
    	     print("Your number is too low, guess higher")
    }
    else if(integ! > Int(numberToBeGuessed)){
        print("Your number is too high, guess lower")
    }
    else{
        print("Congrats you guessed the right number! It took \(count) tries")
        flag = true
    }
    	     	      
}
