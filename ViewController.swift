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
    
    @IBOutlet weak var contactNameButton: UIButton!
    
    var contactName: String? = "Numpy Gleeson"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if contactName != nil {
                    contactNameButton.setTitle(contactName, for: .normal)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: actions
    @IBAction func onNameClicked(_ sender: Any) {
        
    }
    


}

