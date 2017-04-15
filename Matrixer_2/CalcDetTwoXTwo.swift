//
//  CalcDetTwoXTwo.swift
//  Matrixer_2
//
//  Created by Tohil on 15/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import UIKit

class CalcDetTwoXTwo: UIViewController {
    
    
    @IBOutlet var A11: UITextField!
    @IBOutlet var A12: UITextField!
    @IBOutlet var A21: UITextField!
    @IBOutlet var A22: UITextField!
    
    @IBOutlet weak var det: UILabel!
    
    
    
    //
    @IBAction func calculate(_ sender: UIButton) {
        
        let a11 = Int(A11.text!)
        let a12 = Int(A12.text!)
        
        let a21 = Int(A21.text!)
        let a22 = Int(A22.text!)
        
        
        if  a11 != nil,
            a12 != nil,
            a21 != nil,
            a22 != nil
            {
            
            let AMatrix = getArray(a: a11!, a12!, a21!, a22!)
            
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
