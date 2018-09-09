//
//  ViewController.swift
//  Menu Bars
//
//  Created by Ronald Muñoz on 9/5/18.
//  Copyright © 2018 Ronald Muñoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 100

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func pauseButtonClick(_ sender: Any) {
        print("Pause button pressed")
        timer.invalidate()
    }
    
    @IBAction func playButtonClick(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerSelector), userInfo: nil, repeats: true)
        print("Play button pressed")
       
    }
    
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10{
            time -= 10
            setTimerToCurrentTime()

        }
        print("-10 button pressed")
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        setTimerToCurrentTime()
        print("+10 button pressed")
    }
    
    @IBAction func resetButtonClick(_ sender: Any) {
        time = 100
        setTimerToCurrentTime()
        timer.invalidate()
        print("Reset button pressed")
    }
    
    func setTimerToCurrentTime(){
        numberLabel.text = String(time)
    }
    
    @objc func timerSelector(){

        if time > 0 {
            time -= 1
            setTimerToCurrentTime()
            print("A second has passed")
        } else{
            timer.invalidate()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setTimerToCurrentTime()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

