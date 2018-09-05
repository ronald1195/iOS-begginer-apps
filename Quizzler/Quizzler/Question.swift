//
//  Question.swift
//  Quizzler
//
//  Created by Ronald Muñoz on 7/11/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    // Class properties:
    let questionText : String
    let answer : Bool

    //Initializer for question class
    init( text : String, correctAnswer : Bool) {
        questionText = text
        answer = correctAnswer
    }
}
