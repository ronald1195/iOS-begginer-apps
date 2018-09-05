//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool =  false
    var questionIndex : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Initialize the UI with starting values
        initializeUI()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }
        else if sender.tag == 2{
            pickedAnswer = false
        }
        checkAnswer()
        updateUI()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionIndex+1) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionIndex+1)
        
        nextQuestion()
        if questionIndex <= 12{
            questionLabel.text = allQuestions.list[questionIndex].questionText
        }
        else{
            print("End of Quiz")
            _ = UIAlertController(title: "Awesome", message: "You have finished all the questions", preferredStyle: .alert)
        }
    }
    

    func nextQuestion() {
        
        if questionIndex < 12{
            questionIndex += 1
        }
        else{
            let alert = UIAlertController(title: "Awesome", message: "You have finished all the questions", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            {
                (UIAlertAction) in self.startOver()
                
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    
    }
    
    
    func checkAnswer() {
        let currentQuestion : Question = allQuestions.list[questionIndex]
        
        if pickedAnswer == currentQuestion.answer{
            ProgressHUD.showSuccess("Correct!")
            score += 1
            
        }
        else if pickedAnswer != currentQuestion.answer{
            ProgressHUD.showError("Wrong ☹️")
            
        }
    }
    
    
    func startOver() {
        pickedAnswer =  false
        questionIndex = 0
        score = 0
       
        initializeUI()
    }
    
    func initializeUI(){
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionIndex) / 13"
        progressBar.frame.size.width = 0
        
        let currentQuestion = allQuestions.list[questionIndex]
        questionLabel.text = currentQuestion.questionText
    }
    

    
}
