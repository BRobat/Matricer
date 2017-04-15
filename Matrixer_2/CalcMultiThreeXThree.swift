//
//  CalcMultiThreeXThree.swift
//  Matrixer_2
//
//  Created by Tohil on 09/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import UIKit

class CalcMultiThreeXThree: UIViewController {

    @IBOutlet var A11: UITextField!
    @IBOutlet var A12: UITextField!
    @IBOutlet var A13: UITextField!
    @IBOutlet var A21: UITextField!
    @IBOutlet var A22: UITextField!
    @IBOutlet var A23: UITextField!
    @IBOutlet var A31: UITextField!
    @IBOutlet var A32: UITextField!
    @IBOutlet var A33: UITextField!
    
    @IBOutlet var B11: UITextField!
    @IBOutlet var B12: UITextField!
    @IBOutlet var B13: UITextField!
    @IBOutlet var B21: UITextField!
    @IBOutlet var B22: UITextField!
    @IBOutlet var B23: UITextField!
    @IBOutlet var B31: UITextField!
    @IBOutlet var B32: UITextField!
    @IBOutlet var B33: UITextField!
    
    @IBOutlet weak var C11: UILabel!
    @IBOutlet weak var C12: UILabel!
    @IBOutlet weak var C13: UILabel!
    @IBOutlet weak var C21: UILabel!
    @IBOutlet weak var C22: UILabel!
    @IBOutlet weak var C23: UILabel!
    @IBOutlet weak var C31: UILabel!
    @IBOutlet weak var C32: UILabel!
    @IBOutlet weak var C33: UILabel!
    
    
    
    
    
    
    @IBAction func Calculate(_ sender: UIButton) {
        
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
            
            C11.text! = String(CMatrix[0])
            C12.text! = String(CMatrix[1])
            C13.text! = String(CMatrix[2])
            C21.text! = String(CMatrix[3])
            C22.text! = String(CMatrix[4])
            C23.text! = String(CMatrix[5])
            C31.text! = String(CMatrix[6])
            C32.text! = String(CMatrix[7])
            C33.text! = String(CMatrix[8])
            
        }   else {
            
            C11.text! = "-"
            C12.text! = "-"
            C13.text! = "-"
            C21.text! = "-"
            C22.text! = "-"
            C23.text! = "-"
            C31.text! = "-"
            C32.text! = "-"
            C33.text! = "-"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
