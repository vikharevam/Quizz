//
//  MultimediaControl.swift
//  Quizz
//
//  Created by Александр Вихарев on 07.02.2023.
//

import UIKit
import Foundation
import AVFoundation

var player: AVAudioPlayer?


let soundRight = "sfx-5"
let soundWrong = "NoNoNo"

func playSound(nameSound: String?) {
    guard let path = Bundle.main.path(forResource: nameSound, ofType:"mp3") else {
        return }
    let url = URL(fileURLWithPath: path)

    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        
    } catch let error {
        print(error.localizedDescription)
   }
    
}
