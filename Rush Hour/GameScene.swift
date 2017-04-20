//
//  GameScene.swift
//  Rush Hour
//
//  Created by Student on 4/20/17.
//  Copyright © 2017 Scott, Carter, Amer. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    override func didMove(to view: SKView)
    {
        physicsWorld.contactDelegate = self
        
        createCar(height: 200, width: 100, location: CGPoint(x: 0, y: 0), name: "car1", color: UIColor.red, isVertical: true)
        createCar(height: 100, width: 200, location: CGPoint(x: 0, y: -200), name: "car2", color: UIColor.green, isVertical: false)
    }
    
    func createCar(height: CGFloat, width: CGFloat, location: CGPoint, name: String, color: UIColor, isVertical: Bool)
    {
        let carProperties : CGSize = CGSize(width: width, height: height)
        let car = SKSpriteNode(color: color, size: carProperties)
        car.position = location
        car.physicsBody?.affectedByGravity = false
        car.physicsBody?.isDynamic = false
        car.physicsBody?.usesPreciseCollisionDetection = true
        car.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        car.name = "car1"
        addChild(car)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        for touch in touches
        {
            let location = touch.location(in: self)
            
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches
        {
            let location = touch.location(in: self)
            
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
