//
//  GameViewController.swift
//  boink
//
//  Created by Dylan Dang on 8/20/21.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let scene = GameScene(fileNamed: "GameScene")!
        //print(view.bounds.size, screenWidth, screenHeight)
        let skView = view as! SKView
        
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        skView.allowsTransparency = true
        
        skView.showsPhysics = false
        
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
        
        
    }

    
    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
 
 
/*

 override func viewDidLayoutSubviews() {
     super.viewDidLayoutSubviews()
 */
