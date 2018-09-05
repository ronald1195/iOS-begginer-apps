//
//  ViewController.swift
//  catYears
//
//  Created by Ronald Muñoz on 8/31/18.
//  Copyright © 2018 Ronald Muñoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var humanAgeLabel: UILabel!
    
    @IBAction func calculateButtom(_ sender: Any) {
        if let age = Int(ageInput.text!){
            let humanAge = age * 7
            humanAgeLabel.text = "Your cat is " + String(humanAge) + " years old."
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

