//
//  ResultViewController.swift
//  QuizApp
//
//  Created by salo khizanishvili on 23.05.23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: Int?
    
    @IBOutlet weak var resultLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let text = result {
            resultLbl.text = "Your Result is: \(text)"
        }
    }
    
    @IBAction func backBtn(_ sender: Any) {
        _ = self.navigationController?.popToRootViewController(animated: true)    }
    
}
