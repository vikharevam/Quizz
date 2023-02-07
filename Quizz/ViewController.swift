//
//  ViewController.swift
//  Quizz
//
//  Created by Александр Вихарев on 05.02.2023.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionView: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!

    let colorButtonNormal = #imageLiteral(resourceName: "Rectangle")
    let colorButtonRight = #imageLiteral(resourceName: "Rectangle_green")
    let colorButtonWrong = #imageLiteral(resourceName: "Rectangle_red")
    

    
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestionUI()
        
    }

    @IBAction func amswerPassedButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quizzQuestoins [questionNumber].answer
        
        if userAnswer == actualAnswer {
            playSound(nameSound: soundRight)
            print("Right!")
        } else {
            playSound(nameSound: soundWrong)
            print("Wrong!")
        }
    
        
        if questionNumber + 1 < quizzQuestoins.count{
            questionNumber += 1
        } else {
            questionNumber = 0
            
        }
            updateQuestionUI()
      
        
    }
    
    func updateQuestionUI() {
        questionView.text = quizzQuestoins[questionNumber].text
}

}
