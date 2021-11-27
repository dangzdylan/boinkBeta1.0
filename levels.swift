//
//  levels.swift
//  boink
//
//  Created by Dylan Dang on 9/19/21.
//

import SpriteKit
import GameplayKit
import AVFoundation




func checkForChangeLevel(self:SKScene){
    
    
    if scoreNum == 10{
        secondLevel(self:self)
        //thirdLevel(self:self)
    }else if scoreNum == 20{
        thirdLevel(self:self)
    }else if scoreNum == 30{
        fourthLevel(self:self)
    }else if scoreNum == 40{
        fifthLevel(self:self)
    }
    /*
    if monsterArray.count >= 1{
        monsterSpeedUpAnimation()
        print(monsterSpeed)
    }
     */
     
}




func secondLevel(self:SKScene){
    setBackground(self: self, chosenColor: backgroundColorWays[2]!)
    spawnMonster(self: self)
}

func thirdLevel(self:SKScene){
    setBackground(self: self, chosenColor: backgroundColorWays[3]!)
    monsterSpeedUpAnimation()
}

func fourthLevel(self:SKScene){
    setBackground(self: self, chosenColor: backgroundColorWays[4]!)
    spawnMonster(self: self)
}

func fifthLevel(self:SKScene){
    setBackground(self: self, chosenColor: backgroundColorWays[5]!)
    monsterSpeed *= 1.1
    playerSpeed *= 1.1
}
