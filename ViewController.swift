//
//  ViewController.swift
//  Syncapp-iOS
//
//  Created by crabsillon pawson on 26/1/17.
//  Copyright © 2017 embryio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: outlets
    
    @IBOutlet weak var textBox: UITextField!    
    
    var currentTextState = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textBox.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "oneToTwo" {
            textBox.text = "bye"
        }
    }
    
    //MARK: actions
    
    @IBAction func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
        if (currentTextState) {
            textBox.text = "hello"
            currentTextState = false
        }
        else {
            textBox.text = "world"
            currentTextState = true
        }
    }

}

