//
//  Det3x3Easy.swift
//  Matrixer_2
//
//  Created by Tohil on 15/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import UIKit

class Det3x3Easy: UIViewController {

    
    var time = 0.0
    var timer = Timer()
    
    @IBOutlet weak var A11: UILabel!
    @IBOutlet weak var A12: UILabel!
    @IBOutlet weak var A13: UILabel!
    @IBOutlet weak var A21: UILabel!
    @IBOutlet weak var A22: UILabel!
    @IBOutlet weak var A23: UILabel!
    @IBOutlet weak var A31: UILabel!
    @IBOutlet weak var A32: UILabel!
    @IBOutlet weak var A33: UILabel!
    
    @IBOutlet var det: UITextField!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    //
    @IBAction func Start(_ sender: UIButton) {
        
        A11.text! = String(rand(min: mn, max: mxeasy))
        A12.text! = String(rand(min: mn, max: mxeasy))
        A13.text! = String(rand(min: mn, max: mxeasy))
        A21.text! = String(rand(min: mn, max: mxeasy))
        A22.text! = String(rand(min: mn, max: mxeasy))
        A23.text! = String(rand(min: mn, max: mxeasy))
        A31.text! = String(rand(min: mn, max: mxeasy))
        A32.text! = String(rand(min: mn, max: mxeasy))
        A33.text! = String(rand(min: mn, max: mxeasy))
        
        det.text! = ""
        
        time = 0.0
        timeLabel.text = "0"
        
        if(!timer.isValid){
            
            timer = Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(Det3x3Easy.action),userInfo: self, repeats: true)
            
        }
        
    }

    
    @IBAction func Check(_ sender: UIButton) {
        
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
            
            det.text! = checking(cond: determinant, checked: det.text!)
            
        }
        
        timer.invalidate()
        
        
    }
    
    
    @IBAction func minus(_ sender: UIButton) {
         det.text! += "-"
    }
    
    
    
    func action() {
        
        time += interval
        timeLabel.text = String(Int(time))
        
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
