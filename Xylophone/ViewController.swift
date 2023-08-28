//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func KeyPressed(_ sender: UIButton) {
//        var text = String(sender.currentTitle)
//        UIView.animate(withDuration: 0.0){
//            sender.alpha = 0.5
//        }
        sender.alpha = 0.5
        playSound(fileName: sender.currentTitle!)
        
        print("start")
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            print("end")
            UIView.animate(withDuration: 0.0){
                sender.alpha = 1
            }
            
        }
        
        
    }
    
    func playSound(fileName:String) {
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                    
    }

    

}

