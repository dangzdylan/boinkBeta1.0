//
//  Player.swift
//  dodge2
//
//  Created by Dylan on 8/2/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation


func addPlayer(self:SKScene){
    
    let diameter = screenHeight/40
    Player = SKSpriteNode(color: .gray, size: CGSize(width: diameter, height: diameter))
    
    Player.texture = playerLookDown
    Player.zRotation = 0
    
    Player.position = CGPoint(x: 0, y: 0)

    //player physics
    Player.physicsBody = SKPhysicsBody(circleOfRadius: diameter / 2)
    
    Player.physicsBody?.categoryBitMask = ColliderType.Player
    Player.physicsBody?.contactTestBitMask = ColliderType.coin | ColliderType.topBorder | ColliderType.bottomBorder | ColliderType.rightBorder | ColliderType.leftBorder | ColliderType.Monster 
    Player.physicsBody?.collisionBitMask = ColliderType.topBorder | ColliderType.bottomBorder | ColliderType.leftBorder | ColliderType.rightBorder
    Player.physicsBody?.isDynamic = true
    Player.physicsBody?.affectedByGravity = false
    Player.physicsBody?.angularDamping = 0
    Player.physicsBody?.linearDamping = 0
    Player.physicsBody?.restitution = 1
    Player.physicsBody?.friction = 0
    Player.physicsBody?.mass = PlayerMonsterMassConstant
    
    self.addChild(Player)
}


func movePlayer(self:SKScene){
        
        if goingUp == true{
            if !goingRight{
                playerVelo = CGVector(dx: playerSpeed, dy: playerSpeed)
                Player.texture = playerTopRight
            }else{
                playerVelo = CGVector(dx: -playerSpeed, dy: playerSpeed)
                Player.texture = playerTopLeft
            }
        }else{
            if !goingRight{
                playerVelo = CGVector(dx: playerSpeed, dy: -playerSpeed)
                Player.texture = playerBottomRight
            }else{
                playerVelo = CGVector(dx: -playerSpeed, dy: -playerSpeed)
                Player.texture = playerBottomLeft
            }
        }
        goingRight = !goingRight
        

        Player.physicsBody?.velocity = CGVector(dx:0, dy:0)
        Player.physicsBody?.applyImpulse(playerVelo)
}

//TODO
func PlayerTouchBorder(borderBit:UInt32){
    var tempPlayerVelo = [playerSpeed, playerSpeed]
    
    if !goingRight{
        tempPlayerVelo[0] *= -1
    }
    if !goingUp{
        tempPlayerVelo[1] *= -1
    }
    
    
    var vector = CGVector()
    if borderBit == ColliderType.topBorder{
        goingUp = !goingUp
        vector = CGVector(dx: tempPlayerVelo[0], dy: -tempPlayerVelo[1])
        if Player.texture == playerTopLeft{
            Player.texture = playerBottomLeft
        }else{
            Player.texture = playerBottomRight
        }
        
    }else if borderBit == ColliderType.bottomBorder{
        goingUp = !goingUp
        vector = CGVector(dx: tempPlayerVelo[0], dy: -tempPlayerVelo[1])
        if Player.texture == playerBottomLeft{
            Player.texture = playerTopLeft
        }else{
            Player.texture = playerTopRight
        }
        
    }else if borderBit == ColliderType.rightBorder{
        goingRight = !goingRight
        vector = CGVector(dx: -tempPlayerVelo[0], dy: tempPlayerVelo[1])
        if Player.texture == playerBottomRight{
            Player.texture = playerBottomLeft
        }else{
            Player.texture = playerTopLeft
        }
        
    }else if borderBit == ColliderType.leftBorder{
        goingRight = !goingRight
        vector = CGVector(dx: -tempPlayerVelo[0], dy: tempPlayerVelo[1])
        if Player.texture == playerBottomLeft{
            Player.texture = playerBottomRight
        }else{
            Player.texture = playerTopRight
        }
    }
    
    Player.physicsBody?.velocity = CGVector(dx:0, dy:0)
    Player.physicsBody?.applyImpulse(vector)
    
    
}


func deadPlayerTexture() -> SKTexture{
    if Player.texture == playerTopRight{
        return deadPlayerTextureArr[0]
    }else if Player.texture == playerTopLeft{
        return deadPlayerTextureArr[1]
    }else if Player.texture == playerBottomLeft{
        return deadPlayerTextureArr[2]
    }else if Player.texture == playerBottomRight{
        return deadPlayerTextureArr[3]
    }
    
    return deadPlayerTextureArr[0]
}



