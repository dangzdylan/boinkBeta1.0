//
//  gamestatevars.swift
//  boink
//
//  Created by Dylan Dang on 9/5/21.
//

import SpriteKit
import GameplayKit
import AVFoundation


//start labels
public var titleLabel = SKLabelNode()
public var tapToLabel = SKLabelNode()
public var startLabel = SKLabelNode()
public var gameHasStarted = false
public var titleLabelAnimationFinished = true


//score
public var score  = SKLabelNode()
public var scoreNum = 0
public var spawnArrInd = 0
public var highScoreWordLabel = SKLabelNode()
public var addedHighScoreWordLabel = 1


//game Over vars
public var stopPlayerTextureMove = false
public var gameHasEnded = false
public var menuBox = SKSpriteNode()
public let menuBoxY:CGFloat = screenHeight
public var playAgain = SKSpriteNode()
public var scoreWordLabel = SKLabelNode()
public var scoreNumberLabel = SKLabelNode()
public var playAgainButtonActive = false

//data save
public let userDefaults = UserDefaults()

public struct UDKey{
    static let highScore = "highScore"
    static let playerTopRight = "playerTopRight"
    static let playerTopLeft = "playerTopLeft"
    static let playerBottomLeft = "playerBottomLeft"
    static let playerBottomRight = "playerBottomRight"
    static let playerLookDown = "playerLookDown"
    
}

//sound var

public struct SPKey{
    static var collectCoinSoundPlayer = AVAudioPlayer()
    static var gameOverSoundPlayer = AVAudioPlayer()
}


//level
public var currentLevelLabel = SKLabelNode()


//font
public var currentFont = "BlueNight-Regular"
