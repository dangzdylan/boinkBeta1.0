//
//  sounds.swift
//  boink
//
//  Created by Dylan Dang on 9/5/21.
//

import SpriteKit
import GameplayKit
import AVFoundation


func playSound(soundName:String, type:String, volume:Float, soundPlayer: inout AVAudioPlayer){
    
    let url = Bundle.main.url(forResource: soundName, withExtension: type)
    //if url empty return nothing
    guard url != nil else{
        return
    }
    
    //play
    do{
        soundPlayer = try AVAudioPlayer(contentsOf: url!)
        soundPlayer.volume = volume
        soundPlayer.play()
    }catch{
        print("error")
    }
}
