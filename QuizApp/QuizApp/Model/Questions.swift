//
//  Questions.swift
//  QuizApp
//
//  Created by salo khizanishvili on 15.05.23.
//

import Foundation

struct Questions{
    let text: String
    let answer: String
    let back: String
    
    init(question:String, answer:String, back: String){
        text = question
        self.answer = answer
        self.back = back
    }
}
