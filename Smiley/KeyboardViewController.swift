//
//  KeyboardViewController.swift
//  Smiley
//
//  Created by Nathan Tornquist on 9/17/15.
//  Copyright © 2015 NathanTornquist. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {
    
    @IBOutlet weak var smileySlider: UISlider!
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let constraint = NSLayoutConstraint(item: self.view, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0.0, constant: 50.0)
        self.view.addConstraint(constraint)
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
    

    @IBAction func thumbsUpPressed(sender: AnyObject) {
        let smileySliderValue = getSmileySliderInt()
        let smileySliderText = getSmiley(smileySliderValue)
        sendString(smileySliderText)
        
    }
    

    func getSmileySliderInt() -> Int {
        return Int(round(self.smileySlider.value))
    }
    
    func getSmiley(size: Int) -> String {
        var result = "8"
        for var i = 1; i <= size; ++i {
            result+="="
        }
        result+="D"
        return result
    }
    
    func sendString(value: String) {
        textDocumentProxy.insertText(value)
    }
    
}