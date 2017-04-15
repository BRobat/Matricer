//
//  Logic.swift
//  Matrixer
//
//  Created by Tohil on 04/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import Foundation

//getting random numbers
func rand(min: Double, max: Double) -> Int {
    let r = drand48() * (max - min) + min
    
    return Int(r)
}

//checking if the answer is correct
func checking(cond: Int, checked: String) -> String {
    
    if cond == Int(checked) {
        return "\(cond)"
    } else {
        return "-"
    }
    
}


//making an array from set of numbers
func getArray(a: Int...) -> [Int] {
    
    var c = [Int]()
    for element in a{
        c.append(element)
    }
    return c
}

//multiplicating two arrays
func calcMulti2x2(a: [Int], b: [Int]) -> [Int] {
    
    let c11 = a[0]*b[0] + a[1]*b[2]
    let c12 = a[0]*b[2] + a[1]*b[3]
    let c21 = a[2]*b[0] + a[3]*b[2]
    let c22 = a[2]*b[2] + a[3]*b[3]
    
    let c = getArray(a: c11, c12, c21, c22)
    
    return c
}

//multiplicating two arrays
func calcMulti3x3(a: [Int], b: [Int]) -> [Int] {
    
    let c11 = a[0]*b[0] + a[1]*b[3] + a[2]*b[6]
    let c12 = a[0]*b[1] + a[1]*b[4] + a[2]*b[7]
    let c13 = a[0]*b[2] + a[1]*b[5] + a[2]*b[8]
    let c21 = a[3]*b[0] + a[4]*b[3] + a[5]*b[6]
    let c22 = a[3]*b[1] + a[4]*b[4] + a[5]*b[7]
    let c23 = a[3]*b[2] + a[4]*b[5] + a[5]*b[8]
    let c31 = a[6]*b[0] + a[7]*b[3] + a[8]*b[6]
    let c32 = a[6]*b[1] + a[7]*b[4] + a[8]*b[7]
    let c33 = a[6]*b[2] + a[7]*b[5] + a[8]*b[8]
    
    let c = getArray(a: c11, c12, c13, c21, c22, c23, c31, c32, c33)
    
    return c
}

//
func calcDet2x2(a: [Int]) -> Int {
    
    let det = a[0]*a[4]*a[8] + a[1]*a[5]*a[6] + a[2]*a[3]*a[7] - a[2]*a[4]*a[6] - a[1]*a[3]*a[8] - a[0]*a[5]*a[7]
    
   return det
}

//
func calcDet3x3(a: [Int]) -> Int {
    
    let det = a[0]*a[3] - a[1]*a[2]
    
    return det
}




//error handling
/* Examples for later usage
 
 
 
func doesExist(args: Int...) -> Bool {
    var check = 0
    for a in args{
        if a != nil {
            
            check += 1
            
        } else {}
    }
    
    if check == args.count {
        
        return true
        
        
    } else {
        
        return false
    }
}














*/
