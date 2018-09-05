//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Ronald Muñoz on 6/21/18.
//  Copyright © 2018 Ronald Muñoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eightBallView: UIImageView!
    let eightBallFace = ["ball1", "ball2", "ball3", "ball3", "ball4", "ball5"]
    var randomIndex : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shakeButton(_ sender: UIButton) {
        randomizeEightBall()
    }
    
    func randomizeEightBall(){
        randomIndex = Int(arc4random_uniform(5))
        eightBallView.image = UIImage(named: eightBallFace[randomIndex])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizeEightBall()
    }
    


}

