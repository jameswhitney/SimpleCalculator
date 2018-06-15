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
    
    
    @IBOutlet weak var outputLabel: UILabel!
    
    // Instance variables
    var labelString: String = "0"
    var currentMode: modes = .not_set
    var savedNumber: Int = 0
    var lastButtonWasMode: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedPlus(_ sender: Any) {
        
    }
    
    @IBAction func pressedSubtract(_ sender: Any) {
        
    }
    
    @IBAction func pressedEquals(_ sender: Any) {
        
    }

    @IBAction func pressedClear(_ sender: Any) {
        labelString = "0"
        currentMode = .not_set
        savedNumber = 0
        lastButtonWasMode = false
        outputLabel.text = "0"
    }
    
    @IBAction func pressedNumButton(_ sender: UIButton) {
        let stringValue: String? = sender.titleLabel?.text
        
        labelString = labelString.appending(stringValue!)
        updateText()
    }
    
    // updates text in UIlabel
    func updateText() {
        guard let labelInt: Int = Int(labelString) else {
            return
        }
        
        outputLabel.text = "\(labelInt)"
    }
    
    // changes mode selected by user, ie addition or subtraction
    func changeModes(newMode: modes) {
        
    }

}

