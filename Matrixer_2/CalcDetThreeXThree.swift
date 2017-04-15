//
//  CalcDetThreeXThree.swift
//  Matrixer_2
//
//  Created by Tohil on 08/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import UIKit

class CalcDetThreeXThree: UIViewController {

    @IBOutlet var A11: UITextField!
    @IBOutlet var A12: UITextField!
    @IBOutlet var A13: UITextField!
    @IBOutlet var A21: UITextField!
    @IBOutlet var A22: UITextField!
    @IBOutlet var A23: UITextField!
    @IBOutlet var A31: UITextField!
    @IBOutlet var A32: UITextField!
    @IBOutlet var A33: UITextField!
    
    @IBOutlet weak var det: UILabel!
    
    
    //
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
        
        if  a11 != nil,
            a12 != nil,
            a13 != nil,
            a21 != nil,
            a22 != nil,
            a23 != nil,
            a31 != nil,
            a31 != nil,
            a32 != nil,
            a33 != nil{
         
                let AMatrix = getArray(a: a11!, a12!, a13!, a21!, a22!, a23!, a31!, a32!, a33!)
                
                let determinant = calcDet3x3(a: AMatrix)
            
                det.text! = String(determinant)
                
            } else {
            
            det.text! = "-"
        
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
