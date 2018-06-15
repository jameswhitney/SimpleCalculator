//
//  ViewController.swift
//  Simple Calculator
//
//  Created by James Whitney on 6/14/18.
//  Copyright © 2018 James Whitney. All rights reserved.
//

import UIKit

// MARK: Enum Modes

enum modes {
    case not_set
    case addition
    case substraction
}

// MARK: - CalculatorViewController: UIViewController

class CalculatorViewController: UIViewController {
    
    // Instance variables
    var labelString: String = "0"
    var currentMode: modes = .not_set
    var savedNumber: Int = 0
    var lastButtonWasMode: Boole = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // updates text in UIlabel
    func updateText() {
        
    }
    
    // changes mode selected by user, ie addition or subtraction
    func changeModes(newMode: modes) {
        
    }

}

