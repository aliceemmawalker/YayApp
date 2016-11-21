//
//  ViewController.swift
//  The Count 3
//
//  Created by Alice Walker on 21/11/2016.
//  Copyright © 2016 BSD Academy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var currentCount = 0
    var audioPlayer = AVAudioPlayer()
//    
//    

    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    
    
    @IBAction func addOneButton(_ sender: UIButton) {
        
        currentCount = currentCount + 1
        
        outputLabel.text = "The button has been clicked \(currentCount) times"
        
        outputLabel.textColor = UIColor.red
        
    }
    
    
    
    @IBAction func cheerButton(_ sender: AnyObject) {
        
        //let cheerSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "cheer", ofType: "mp3")!)
        //do{
        //audioPlayer = try AVAudioPlayer(contentsOf: cheerSound as URL)
        
        //print("audio playing")
        //}
        //catch{
        //    print("broken")
        //}
        let path = Bundle.main.path(forResource: "cheer.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
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

