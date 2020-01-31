import UIKit

var str : String // variable declaration

str = "Hello, playground" // variable definition

var str2 : String = " " //variable declaration + definition
var str3 = " " // inferred type, declaration + definition

let myAge : Int = 13 //constant declaration + definition

var myWeight : Float = 55.44
var myWeightInt : Int = Int(myWeight)

var thing = "my weight is \(myWeight)"
print(thing)

str = "Hi semicolumn;;;;;;;;;;"

                if(3==4){
print("what a syntax !!!")
        }

var aRandomNum: Int
for _ in 1...10{
    aRandomNum = Int(arc4random_uniform(10))
    
    print(aRandomNum)
}
