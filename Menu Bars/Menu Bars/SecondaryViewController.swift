//
//  SecondaryViewController.swift
//  Menu Bars
//
//  Created by Ronald Muñoz on 9/5/18.
//  Copyright © 2018 Ronald Muñoz. All rights reserved.
//

import UIKit

class SecondaryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var timeInput: UITextField!
    var newTime = 10
    

    @IBAction func saveButtonClick(_ sender: Any) {
        
        if let input = timeInput.text{
            newTime = Int(input)!
        }
        
        performSegue(withIdentifier: "timer", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.timeInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController
        vc.time = newTime
        
    }
    
    //Hide keyboard when user touches outside keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
