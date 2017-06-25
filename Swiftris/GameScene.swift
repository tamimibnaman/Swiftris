//
//  GameScene.swift
//  Swiftris
//
//  Created by Tamim Ibn Aman on 6/23/17.
//  Copyright © 2017 Tamim Ibn Aman. All rights reserved.
//

import SpriteKit
import GameplayKit

let tickLengthLevelOne = TimeInterval(600)
class GameScene: SKScene {
    
    var tick:(() -> ())?
    var tickLengthMillis =  tickLengthLevelOne
    var lastTick:NSDate?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 1.0)
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 1.0)
        
        addChild(background)
    }

    
    override func didMove(to view: SKView) {
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
    }
    
    func touchMoved(toPoint pos : CGPoint) {
    }
    
    func touchUp(atPoint pos : CGPoint) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        guard let lastTick = lastTick else {
            return
        }
        let timePassed = lastTick.timeIntervalSinceNow * -1000.0
        if timePassed > tickLengthMillis{
            self.lastTick = NSDate()
            tick?()
        }
    }
    
    func startTicking(){
        lastTick = NSDate()
    }
    
    func stopTicking(){
        lastTick = NSDate()
    }
}
