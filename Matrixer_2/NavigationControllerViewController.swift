//
//  NavigationControllerViewController.swift
//  Matrixer_2
//
//  Created by Tohil on 17/04/2017.
//  Copyright © 2017 Tohil. All rights reserved.
//

import UIKit
import AVFoundation

class NavigationControllerViewController: UINavigationController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource:"main_music", ofType:"caf")!))
            audioPlayer.prepareToPlay()
            print("music is on")
            
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
   
        }
        catch{
            print(error)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
