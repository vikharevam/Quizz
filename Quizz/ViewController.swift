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
    
    let quizzQuestoins = ["Four + Two is equal to Six.",
                          "Five - Three is greater than One",
                          "Three + Eight is less than Ten"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        questionView.text = quizzQuestoins[Int.random(in: 0...2)]
    }


    @IBAction func amswerPassedButton(_ sender: Any) {
    }
}

