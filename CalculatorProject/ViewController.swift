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
    var numbersOnScreen: Double = 0
    
    
    @IBOutlet weak var printOutLabel: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        printOutLabel.text = String(sender.tag-1) + printOutLabel.text!
        numbersOnScreen = Double(printOutLabel.text!)!
        
        //  Fatal Error : printOutLabel.text = printOutLabel.text! + String(sender.tag-1)  May 10th
            // "fatal error: unexpectedly found nil while unwrapping an Optional value"
        //  May 11th
            // Fixed this problem by changing the text on the label to "" by default instead of "Numbers go here"
                // The numbersOnScreen expects a Double to be on Label.text This is why the app crashed then, and is why it is crashing now. Whenever I press an operator symbol the application is fine but if I try to press a number after that, it will crash because + is not a number
        
        // when I added "Label.text! +" numbersOnScreen returned a fatal error
        // everything worked fine until I added "Label.text! +", although I could only display the number being pressed on the screen with no additional numbers
    }
    
    
    // Want to add a method to change the apperance of the buttons when pressed so I dont have to print out the characters on the label
    @IBAction func operators(_ sender: UIButton) {
        printOutLabel.text = printOutLabel.text! + String(sender.tag-1)
        
        if sender.tag == 15 { // division   //  ÷
            printOutLabel.text = "/"
        }
        else if sender.tag == 16 { // multiplication
            printOutLabel.text = "X"
            
        }
        else if sender.tag == 17 { // minus
            printOutLabel.text = "-"
        }
        else if sender.tag == 18 { //addition
            printOutLabel.text = "+"
        }
        else if sender.tag == 19 { // equals
            printOutLabel.text = "="
        }
        else if sender.tag == 11 { // clear
            printOutLabel.text = ""
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

