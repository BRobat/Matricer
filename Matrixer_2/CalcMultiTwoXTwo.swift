//
//  CalcMultiTwoXTwo.swift
//  Matrixer_2
//
//  Created by Tohil on 09/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import UIKit

class CalcMultiTwoXTwo: UIViewController {

    @IBOutlet var A11: UITextField!
    @IBOutlet var A12: UITextField!
    @IBOutlet var A21: UITextField!
    @IBOutlet var A22: UITextField!
    
    @IBOutlet var B11: UITextField!
    @IBOutlet var B12: UITextField!
    @IBOutlet var B21: UITextField!
    @IBOutlet var B22: UITextField!
    
    @IBOutlet weak var C11: UILabel!
    @IBOutlet weak var C12: UILabel!
    @IBOutlet weak var C21: UILabel!
    @IBOutlet weak var C22: UILabel!
    
    
    
    
    
    
    
    @IBAction func Calc(_ sender: UIButton) {
        
        let a11 = Int(A11.text!)
        let a12 = Int(A12.text!)
        let a21 = Int(A21.text!)
        let a22 = Int(A22.text!)
        
        let b11 = Int(B11.text!)
        let b12 = Int(B12.text!)
        let b21 = Int(B21.text!)
        let b22 = Int(B22.text!)
        
        if a11 != nil,a12 != nil,a21 != nil,a22 != nil,b11 != nil,b12 != nil,b21 != nil,b22 != nil {
            
            let AMatrix = getArray(a: a11!, a12!, a21!, a22!)
            let BMatrix = getArray(a: b11!, b12!, b21!, b22!)
            
            let CMatrix = calcMulti2x2(a: AMatrix, b: BMatrix)
            
            C11.text! = String(CMatrix[0])
            C12.text! = String(CMatrix[1])
            C21.text! = String(CMatrix[2])
            C22.text! = String(CMatrix[3])
        }
        else {
            C11.text! = "-"
            C12.text! = "-"
            C21.text! = "-"
            C22.text! = "-"
            
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
