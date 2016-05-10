//
//  main.swift
//  SwiftFunction
//
//  Created by Samit Koyom on 9/5/59.
//  Copyright © พ.ศ. 2559 Samit Koyom. All rights reserved.
//

import Foundation

// 1. No parameter function
// Create function
func hello(){
    print("Hello Swift!")
}

// Call function
hello();

// 2. Function with parameter
func circleAre(radius:Float)->Float{
    var area:Float
    area = 3.14*radius*radius;
    return area
}

func circleRound(radius:Float,cir:Int)->(Void){
    var round:Float
    round = 2*3.14*radius;
    print(round)
}

// call
print(circleAre(3.5))

// Default value of parameter fuction
func theStarName (name:String,last:String="The Star")->String{
    let result = name+" "+last
    return result
}

let start = theStarName("Boy",last: "SSS")
print(start)

// Nested Functions
func newPostion(moveRight test:Bool,xPosition:Int)->Int{
    func goRight(xPosition:Int)->Int{
        return xPosition+1
    }
    
    func goLeft(xPosition:Int)->Int{
        return xPosition-1
    }
    
    // เรียกใช้งาน Nested function
    let dicision:(Int)->Int = test ? goRight:goLeft
    return dicision(xPosition)
}

var posittion = newPostion(moveRight: true, xPosition: 15)
print("ตำแหน่งปัจจุบัน \(posittion)")













