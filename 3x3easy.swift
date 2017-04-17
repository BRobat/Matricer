//
//  3x3easy.swift
//  Matrixer_2
//
//  Created by Tohil on 07/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import UIKit
import AVFoundation

class ThreeXThreeEasy: UIViewController {
    
    var time = 0.0
    var timer = Timer()
    

    
    
    @IBOutlet var A11: UILabel!
    @IBOutlet var A12: UILabel!
    @IBOutlet var A13: UILabel!
    @IBOutlet var A21: UILabel!
    @IBOutlet var A22: UILabel!
    @IBOutlet var A23: UILabel!
    @IBOutlet var A31: UILabel!
    @IBOutlet var A32: UILabel!
    @IBOutlet var A33: UILabel!
    
    @IBOutlet var B11: UILabel!
    @IBOutlet var B12: UILabel!
    @IBOutlet var B13: UILabel!
    @IBOutlet var B21: UILabel!
    @IBOutlet var B22: UILabel!
    @IBOutlet var B23: UILabel!
    @IBOutlet var B31: UILabel!
    @IBOutlet var B32: UILabel!
    @IBOutlet var B33: UILabel!
    
    @IBOutlet var C11: UITextField!
    @IBOutlet var C12: UITextField!
    @IBOutlet var C13: UITextField!
    @IBOutlet var C21: UITextField!
    @IBOutlet var C22: UITextField!
    @IBOutlet var C23: UITextField!
    @IBOutlet var C31: UITextField!
    @IBOutlet var C32: UITextField!
    @IBOutlet var C33: UITextField!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    
    //
    //
    //
    

    
    @IBAction func start(_ sender: UIButton) {
        A11.text! = String(rand(min: mn, max: mxeasy))
        A12.text! = String(rand(min: mn, max: mxeasy))
        A13.text! = String(rand(min: mn, max: mxeasy))
        A21.text! = String(rand(min: mn, max: mxeasy))
        A22.text! = String(rand(min: mn, max: mxeasy))
        A23.text! = String(rand(min: mn, max: mxeasy))
        A31.text! = String(rand(min: mn, max: mxeasy))
        A32.text! = String(rand(min: mn, max: mxeasy))
        A33.text! = String(rand(min: mn, max: mxeasy))
        
        B11.text! = String(rand(min: mn, max: mxeasy))
        B12.text! = String(rand(min: mn, max: mxeasy))
        B13.text! = String(rand(min: mn, max: mxeasy))
        B21.text! = String(rand(min: mn, max: mxeasy))
        B22.text! = String(rand(min: mn, max: mxeasy))
        B23.text! = String(rand(min: mn, max: mxeasy))
        B31.text! = String(rand(min: mn, max: mxeasy))
        B32.text! = String(rand(min: mn, max: mxeasy))
        B33.text! = String(rand(min: mn, max: mxeasy))
        
        C11.text! = ""
        C12.text! = ""
        C13.text! = ""
        C21.text! = ""
        C22.text! = ""
        C23.text! = ""
        C31.text! = ""
        C32.text! = ""
        C33.text! = ""
        
        time = 0.0
        timeLabel.text = "0"
        
        if(!timer.isValid){
        timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(ThreeXThreeEasy.action),userInfo: self, repeats: true)
        }
        
        
    }
    
    
    
    
    @IBAction func check(_ sender: UIButton) {
        
        let a11 = Int(A11.text!)
        let a12 = Int(A12.text!)
        let a13 = Int(A13.text!)
        let a21 = Int(A21.text!)
        let a22 = Int(A22.text!)
        let a23 = Int(A23.text!)
        let a31 = Int(A31.text!)
        let a32 = Int(A32.text!)
        let a33 = Int(A33.text!)
        
        let b11 = Int(B11.text!)
        let b12 = Int(B12.text!)
        let b13 = Int(B13.text!)
        let b21 = Int(B21.text!)
        let b22 = Int(B22.text!)
        let b23 = Int(B23.text!)
        let b31 = Int(B31.text!)
        let b32 = Int(B32.text!)
        let b33 = Int(B33.text!)
        
        if  a11 != nil,
            a12 != nil,
            a13 != nil,
            a21 != nil,
            a22 != nil,
            a23 != nil,
            a31 != nil,
            a31 != nil,
            a32 != nil,
            a33 != nil,
            b11 != nil,
            b12 != nil,
            b13 != nil,
            b21 != nil,
            b22 != nil,
            b23 != nil,
            b31 != nil,
            b31 != nil,
            b32 != nil,
            b33 != nil{
        
            let AMatrix = getArray(a: a11!, a12!, a13!, a21!, a22!, a23!, a31!, a32!, a33!)
            let BMatrix = getArray(a: b11!, b12!, b13!, b21!, b22!, b23!, b31!, b32!, b33!)
            
            let CMatrix = calcMulti3x3(a: AMatrix, b: BMatrix)
        
        
        C11.text! = checking(cond: CMatrix[0], checked: C11.text!)
        C12.text! = checking(cond: CMatrix[1], checked: C12.text!)
        C13.text! = checking(cond: CMatrix[2], checked: C13.text!)
        C21.text! = checking(cond: CMatrix[3], checked: C21.text!)
        C22.text! = checking(cond: CMatrix[4], checked: C22.text!)
        C23.text! = checking(cond: CMatrix[5], checked: C23.text!)
        C31.text! = checking(cond: CMatrix[6], checked: C31.text!)
        C32.text! = checking(cond: CMatrix[7], checked: C32.text!)
        C33.text! = checking(cond: CMatrix[8], checked: C33.text!)
        }
        
        timer.invalidate()

    }
    
    
    
    func action() {
        
        time += interval
        timeLabel.text = String(Int(time))
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
