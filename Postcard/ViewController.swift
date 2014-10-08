//
//  ViewController.swift
//  Postcard
//
//  Created by Travis Anderson on 9/13/14.
//  Copyright (c) 2014 Travis Anderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Messagelabel: UILabel!
    @IBOutlet weak var EnternameTextfield: UITextField!
    @IBOutlet weak var EntermessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment here to test commits
        
        Messagelabel.hidden = false
        Messagelabel.text = EntermessageTextfield.text
        Messagelabel.textColor = UIColor.redColor()
        
        EntermessageTextfield.text = ""
        EntermessageTextfield.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        nameLabel.hidden = false
        nameLabel.text = EnternameTextfield.text
        nameLabel.textColor = UIColor.blueColor()
        
        EnternameTextfield.text = ""
        EnternameTextfield.resignFirstResponder()
        
    }

}

