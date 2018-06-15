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
        changeModes(newMode: .addition)
    }
    
    @IBAction func pressedSubtract(_ sender: Any) {
        changeModes(newMode: .substraction)
    }
    
    @IBAction func pressedEquals(_ sender: Any) {
        guard let labelInt: Int = Int(labelString) else {
            return
        }
        
        if (currentMode == .not_set || lastButtonWasMode) {
            return
        }
        
        if (currentMode == .addition) {
            savedNumber += labelInt
        }
        
        else if (currentMode == .substraction) {
            savedNumber -= labelInt
        }
        
        currentMode = .not_set
        labelString = "\(savedNumber)"
        updateText()
        lastButtonWasMode = true
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
        
        if (lastButtonWasMode) {
            lastButtonWasMode = false
            labelString = "0"
        }
        
        labelString = labelString.appending(stringValue!)
        updateText()
    }
    
    // updates text in UIlabel
    func updateText() {
        guard let labelInt: Int = Int(labelString) else {
            return
        }
        
        if (currentMode == .not_set) {
            savedNumber = labelInt
        }
        
        let formatter: NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let number: NSNumber = NSNumber(value: labelInt)
        
        outputLabel.text = formatter.string(from: number)
    }
    
    // changes mode selected by user, ie addition or subtraction
    func changeModes(newMode: modes) {
        if (savedNumber == 0) {
            return
        }
        
        currentMode = newMode
        lastButtonWasMode = true
    }

}

