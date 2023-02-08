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
    var questionNumber = 0  //номер вопроса
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestionUI() //функция обновления со значениями по умолчанию
    
    
        
    }
    
    @IBAction func amswerPassedButton(_ sender: UIButton) {
        
      
        
        
        let userAnswer = sender.currentTitle //выбор пользователя
        let actualAnswer = quizzQuestoins [questionNumber].answer //текущий вопрос получае значение в структуре вопросов
        
        if userAnswer == actualAnswer {
            playSound(nameSound: soundRight)
            sender.backgroundColor = UIColor.green
            scorePoint += 1
  
            print("Right!")
            
        } else {
            playSound(nameSound: soundWrong)
            sender.backgroundColor = UIColor.red
            
            print("Wrong!")
        }
        
        if questionNumber + 1 < quizzQuestoins.count{
            questionNumber += 1
          
        } else {
            questionNumber = 0
            
        }
       
   
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestionUI), userInfo: nil, repeats: false)
    }
    
   @objc func updateQuestionUI() {
        questionView.text = quizzQuestoins[questionNumber].text
        
        scoreBar.text = "Счёт: \(scorePoint)"
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
    
       progressBar.progress =  Float(questionNumber + 1)/Float(quizzQuestoins.count)
        
    }
}

