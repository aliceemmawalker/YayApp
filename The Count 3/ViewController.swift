//
//  ViewController.swift
//  YayApp Test
//
//  Created by Alice Walker on 21/11/2016.
//  Copyright © 2016 BSD Academy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

 
    var audioPlayer = AVAudioPlayer()

    
    @IBAction func cheerButton(_ sender: AnyObject) {
 
        let path = Bundle.main.path(forResource: "cheer.mp3", ofType:nil)!
        print("About to play")
        let url = URL(fileURLWithPath: path)
        print("audio playing")
        do{
            let sound = try AVAudioPlayer(contentsOf: url)
            audioPlayer = sound
            sound.play()
        }catch{
            print("error")
        }
        
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

