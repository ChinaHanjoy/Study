//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var errorCode:String? = "404"
print( errorCode )

//强制解包，直接在后面加！
"The errorCode is " + errorCode!

if errorCode != nil{
    "The errorCode is " + errorCode!
}
else{
    "No error"
}

//if let 新名字 = 的方式 解包
if let unwrappedErrorCode = errorCode{
    "The errorCode is " + unwrappedErrorCode
}
else{
    "No error"
}

var errorMessage:String? = "Not found"

if let errorMessage = errorMessage{
    if let errorCode = errorCode{
        "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
    }
}

if let errorCode = errorCode,
    errorMessage = errorMessage where errorCode == "404"{
    
    "The errorCode is " + errorCode + "\nThe errorMessage is " + errorMessage
}


// =====Optional Chaning=====

if let errorMessage = errorMessage{
    //改成大写
    errorMessage.uppercaseString
}

//不知道可选型是否为nil，加？判断，如果可解包，继续执行，如果是nil，返回nil; 等价于上面的if let
errorMessage?.uppercaseString

var uppercaseErrorMessage = errorMessage?.uppercaseString

if let errorMessage = errorMessage?.uppercaseString {
    errorMessage
}

// =====Nill-coalesce=====

var errormessage:String? = nil

let message:String

if let errormessage = errormessage{
    message = errormessage
}
else{
    message = "Not found"
}

let message2 = errormessage == nil ? "Not found" : errormessage

let message3 = errormessage ?? "Not found"


//================元组中的应用================

var error1: (errCode:Int , errMessage:String?) = (404 , "Not found")

error1.errMessage = nil
error1

var error2: (errCode:Int , errMessage:String)? = (404 , "Not found")

error2 = nil
error2

var error3: (errCode:Int , errMessage:String?)? = (404 , "Not found")


//=========应用==========

var ageInput:String = "16"

var age = Int( ageInput)

if let age = Int(ageInput) where age < 20{
    print("You are a teenager!")
}

var greetings = "Hello"
greetings.rangeOfString("ll")
greetings.rangeOfString("oo")


//==========隐式可选型=========

var errString: String! = nil

errString = "Not found"
//可以存nil ，不解包也可是使用； 当只有nil，没有其他值的时候，不解包使用会出现错误
"The errString is " + errString

//意义在于，可以暂时存放一个nil，等到用户正真使用时，又可以直接使用

