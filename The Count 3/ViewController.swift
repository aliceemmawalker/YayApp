//
//  ViewController.swift
//  The Count 3
//
//  Created by Alice Walker on 21/11/2016.
//  Copyright © 2016 BSD Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentCount = 0
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    
    
    @IBAction func addOneButton(sender: UIButton) {
        
        currentCount = currentCount + 1
        
        outputLabel.text = "The button has been clicked \(currentCount) times"
        
        outputLabel.textColor = UIColor.redColor()
        
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

