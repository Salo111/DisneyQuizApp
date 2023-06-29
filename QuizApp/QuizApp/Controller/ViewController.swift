//
//  ViewController.swift
//  QuizApp
//
//  Created by salo khizanishvili on 14.05.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        trueBtn.layer.cornerRadius = 15
        falseBtn.layer.cornerRadius = 15
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel!.text
        let userGotItRight = quizBrain.checkAnswer(userAns: userAnswer!)
        
        if userGotItRight{
            sender.backgroundColor = .green
        }
        else{
            sender.backgroundColor = .red
        }
        
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        questionLbl.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        trueBtn.backgroundColor = .systemGray5
        falseBtn.backgroundColor = .systemGray5
        scoreLbl.text = "Score: \(quizBrain.getScore())"
        if(quizBrain.segue == false){
            self.performSegue(withIdentifier: "Go", sender: Any?.self)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Go"{
            let secondVC = segue.destination as! ResultViewController
            secondVC.result = quizBrain.getScore()
        }
    }
    
}

