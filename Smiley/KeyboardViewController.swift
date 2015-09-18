//
//  KeyboardViewController.swift
//  Smiley
//
//  Created by Nathan Tornquist on 9/17/15.
//  Copyright © 2015 NathanTornquist. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    @IBOutlet weak var nextKeyboardButton: UIButton!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    @IBAction func handleNextKeyboardTapped(sender: AnyObject) {
        advanceToNextInputMode()
    }
}