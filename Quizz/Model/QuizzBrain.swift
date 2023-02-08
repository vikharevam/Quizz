//
//  QuizzBrain.swift
//  Quizz
//
//  Created by Александр Вихарев on 08.02.2023.
//

import Foundation

struct QuizzBrain {
    
    let quizzQuestoins = [
        Question(q: "Строительство Эйфелевой башни было завершено 31 марта 1887 года.", a: "Ложь"),
        Question(q: "Молнию можно увидеть раньше, чем услышать, потому что свет распространяется быстрее звука.", a: "Правда"),

        Question(q: "Ватикан — это страна.", a: "Правда"),
        Question(q: "Мельбурн — столица Австралии.", a: "Ложь"),
        Question(q: "Пенициллин был открыт во Вьетнаме для лечения малярии.", a: "Ложь"),
        Question(q: "Гора Фудзи - самая высокая гора в Японии.", a: "Правда"),
        Question(q: "Брокколи содержит больше витамина С, чем лимоны.", a: "Правда"),
        Question(q: "Череп – самая крепкая кость в человеческом теле.", a: "Ложь"),
        Question(q: "Лампочки были изобретением Томаса Эдисона.", a: "Ложь"),
        Question(q: "Черный ящик в самолете черный.", a: "Ложь"),
        Question(q: "Помидоры - это фрукты.", a: "Ложь"),
        Question(q: "Депрессия является основной причиной инвалидности во всем мире.", a: "Правда"),
        Question(q: "Клеопатра была египетского происхождения.", a: "Ложь"),
        Question(q: "Вы можете чихать во сне.", a: "Ложь"),
        Question(q: "Бананы - это ягоды.", a: "Правда"),
        Question(q: "Кока-кола есть во всех странах мира.", a: "Ложь"),
        Question(q: "Шелк паука когда-то использовался для изготовления гитарных струн.", a: "Ложь"),
        Question(q: "Кокос — это орех.", a: "Ложь")
        /*
        https://ahaslides.com/ru/blog/fun-true-or-false-quiz-questions-answers истояник вопросов
        */
    ]
    
    var questionNumber = 0  //номер вопроса
    
    
    func getQuestionText() -> String {
       return quizzQuestoins[questionNumber].text
    }
   
    func getProgress() -> Float {

    return Float(questionNumber + 1)/Float(quizzQuestoins.count)
        
    }
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizzQuestoins[questionNumber].answer {
            return true
        } else {
            return false
        }
    }
    
}



