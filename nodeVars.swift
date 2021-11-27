//
//  publicvars.swift
//  dodge2
//
//  Created by Dylan on 8/6/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//
import SpriteKit
import GameplayKit
import AVFoundation


//screenBounds = UIScreen.main.bounds, screenScale = UIScreen.main.scale, so UIScreen.main.scale = 2x scale
//screen res


//public var screenWidth =  UIScreen.main.bounds.size.width * CGFloat(2)
public var screenHeight = UIScreen.main.bounds.size.height * CGFloat(2)

//creater label
public var DylanDanglabel = SKLabelNode()
public var GianDavidlabel = SKLabelNode()
//view frame dimension

//public let frameWidth = screenWidth / 2
//public let frameHeight = screenHeight / 2

//borders
public var topBorder = SKShapeNode()
public var bottomBorder = SKShapeNode()
public var leftBorder = SKShapeNode()
public var rightBorder = SKShapeNode()
public var borderBackground = SKSpriteNode()
public let backgroundZPos:CGFloat = -100

//border positions
public  let xPointBorder = screenHeight/10
public let yPointBorder = screenHeight/5

//nodes
public var tempSize = screenHeight/30
public var Player = SKSpriteNode()
public var monsterArray = [SKSpriteNode]()
public var coin = SKSpriteNode()
public let PlayerMonsterMassConstant = 0.0700589120388031

//bit mask
public struct ColliderType{
    static let Player:UInt32 = 1
    static let topBorder:UInt32 = 2
    static let bottomBorder:UInt32 = 4
    static let rightBorder:UInt32 = 8
    static let leftBorder:UInt32 = 16
    static let Monster:UInt32 = 32
    static let coin: UInt32 = 64
}

//player movement vars
public var goingUp = true
public var goingRight = false
public var playerSpeed = monsterSpeed * 2 * 1.05
public var playerVelo = CGVector()

//monster
public var monsterDiameter = Player.size.width
public let monsterSpeedConstant = monsterDiameter / 6.5
public var monsterSpeed = monsterSpeedConstant


//spawner pos
public var spawner1 = SKSpriteNode()
public var spawner2 = SKSpriteNode()
public var spawner3 = SKSpriteNode()
public var spawner4 = SKSpriteNode()









