//
//  QuizBrain.swift
//  QuizApp
//
//  Created by salo khizanishvili on 16.05.23.
//

import Foundation

struct QuizBrain{
    let arrOfQuestions = [Questions(question: "Aladdin's character was based on Brad Pitt.", answer: "False", back: "Aladdin"),
                          Questions(question: "The song “We Don’t Talk About Bruno” from Encanto is the first Disney song to hit #1 on the Billboard Hot 100 chart in 29 years.", answer: "True", back: "Encanto"),
                          Questions(question: "It took eight months from start to finish to produce the 1959 Disney film, Sleeping Beauty.", answer: "False", back: "SleepingBeauty"),
                          Questions(question: "Pinocchio was the first animated, full-color Walt Disney feature film.", answer: "False", back: "Pinocchio"),
                          Questions(question: "Toy Story was Pixar’s first movie.", answer: "True", back: "ToyStory"),
                          Questions(question: "Minnie Mouse’s full name is Wilhelmina Mouse.", answer: "False", back: "MinnieMouse"),
                          Questions(question: "Dumbo is the shortest Disney film.", answer: "True", back: "Dumbo"),
                          Questions(question: "The Aristocats was the first film to be made after Walt Disney’s death.", answer: "True", back: "Atistocrats"),
                          Questions(question: "Prince Eric and Ariel from The Little Mermaid have a daughter named Princess Song.", answer: "False", back: "LittleMermaid"),
                          Questions(question: "Beauty and the Beast was Disney’s first Broadway musical.", answer: "True", back: "BAndBeast"),
                          Questions(question: "Ursula is a character in ‘Cinderella’.", answer: "False", back: "Cinderella"),
                          Questions(question: "In Frozen, Elsa’s sister is Anna.", answer: "True", back: "frozen"),
                          Questions(question: "Figaro is the cat in Pinocchio.", answer: "True", back: "Pinocchio"),
                          Questions(question: "Tom Hanks was the voice of Buzz Lightyear in Toy Story.", answer: "False", back: "ToyStory"),
                          Questions(question: "‘Silenzio Bruno’ is a sentence you can hear in Encanto.", answer: "False", back: "Encanto"),
                          Questions(question: "Walt Disney’s first fully animated feature film was Snow White and the Seven Dwarfs.", answer: "True", back: "SnowWhite"),
                          Questions(question: "The circle of life is a song from The Lion King.", answer: "True", back: "LionKing")]
    var questionNum = 0
    var myScore = 0
    var segue = true
    
    mutating func checkAnswer(userAns: String) -> Bool{
        if(userAns == arrOfQuestions[questionNum].answer){
            myScore += 1
            return true
        }
        else{
            return false
        }
    }
    func getQuestionText() -> String{
        return arrOfQuestions[questionNum].text
    }
    func getProgress() -> Float{
        let finalProgress = Float(questionNum+1) / Float(arrOfQuestions.count)
        return finalProgress
    }
   mutating func nextQuestion (){
        if(questionNum < arrOfQuestions.count-1){
            questionNum += 1
            segue = true
        }
        else{
            questionNum = 0
            //myScore = 0
            segue = false
        }
    }
   
    func getScore() -> Int{
        return myScore
    }
}
