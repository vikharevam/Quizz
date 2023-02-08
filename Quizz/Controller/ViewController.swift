//
//  ViewController.swift
//  Quizz
//
//  Created by Александр Вихарев on 05.02.2023.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var scoreBar: UILabel!
    @IBOutlet weak var questionView: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    /* попробовать изменить вид кнопки в будущем
    let colorButtonNormal = #imageLiteral(resourceName: "Rectangle")
    let colorButtonRight = #imageLiteral(resourceName: "Rectangle_green")
    let colorButtonWrong = #imageLiteral(resourceName: "Rectangle_red")
    */
    
    
    var scorePoint = 0 //счёт
    
    var quizzBrain = QuizzBrain()
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestionUI() //функция обновления со значениями по умолчанию
    
    
        
    }
    
    @IBAction func amswerPassedButton(_ sender: UIButton) {
        
      
        
        
        let userAnswer = sender.currentTitle! //выбор пользователя
        let userGotItRight = quizzBrain.checkAnswer(userAnswer)
        
        if userGotItRight  {
            playSound(nameSound: soundRight)
            sender.backgroundColor = UIColor.green
            scorePoint += 1
  
            print("Right!")
            
        } else {
            playSound(nameSound: soundWrong)
            sender.backgroundColor = UIColor.red
            
            print("Wrong!")
        }
        
        quizzBrain.nextQustion()
       

        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestionUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateQuestionUI() {
       questionView.text = quizzBrain.getQuestionText()
       scoreBar.text = "Счёт: \(scorePoint)"
       trueButton.backgroundColor = UIColor.clear
       trueButton.layer.cornerRadius = 20
       falseButton.layer.cornerRadius = 20
       falseButton.backgroundColor = UIColor.clear
       progressBar.progress =  quizzBrain.getProgress()
    }
}

