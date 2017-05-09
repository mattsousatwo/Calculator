//
//  ViewController.swift
//  CalculatorProject
//
//  Created by Matthew Sousa on 5/8/17.
//  Copyright © 2017 Matthew Sousa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnLabel: Double = 0
    var numberOnScreen: Double = 0
    
    
    @IBOutlet weak var printOutLabel: UILabel!
    
    
    
    /// I think only the 6 button was attached to this IBAction
    @IBAction func numbers(_ sender: UIButton) {
        // label.text will be updated to the labels text and the buttons tag value minus one
       printOutLabel.text = String(sender.tag-1)
        
        numberOnScreen = Double(printOutLabel.text!)!
        // fatal error (when I press 6, when i press any other button nothing happens, text does not change)
        
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

