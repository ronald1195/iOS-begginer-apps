//
//  ViewController.swift
//  How Many Fingers?
//
//  Created by Ronald Muñoz on 9/2/18.
//  Copyright © 2018 Ronald Muñoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var responseTextField: UILabel!
    
    @IBAction func guessButtonClick(_ sender: Any) {
        print("Guess button clicked")
        
        let answer = String(arc4random_uniform(6))
        if userGuess.text == answer{
            userGuess.text = nil
            responseTextField.text = "You are right!"
        }
        else{
            userGuess.text = nil
            responseTextField.text = "Wrong, the answer was " + answer +
            "."
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

