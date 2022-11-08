//
//  AnimationDataBase.swift
//  AnimationSwitcher
//
//  Created by hiirari on 01.11.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%0.2f", force))
        duration: \(String(format: "%0.2f", duration))
        delay: \(String(format: "%0.2f", delay))
        
        """
    }
    
    static func getRandomAnimation() -> Animation{
        Animation(
            preset: DataStore.shared.animations.allCases.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.animations.allCases.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.0...2),
            duration: Double.random(in: 0.5...3),
            delay: 0.3

        )
        
    }
    
}


