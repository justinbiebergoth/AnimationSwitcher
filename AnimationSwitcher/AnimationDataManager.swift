//
//  AnimationDataBase.swift
//  AnimationSwitcher
//
//  Created by hiirari on 01.11.2022.
//

import Foundation
import SpringAnimation

struct AnimationDataManager {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomAnimation() -> AnimationDataManager{
        
        let dataStore = DataStore.shared
        
        return AnimationDataManager(
            preset: dataStore.animations.allCases.randomElement()!.rawValue,
            curve: dataStore.curve.allCases.randomElement()!.rawValue,
            force: Double.random(in: 0.0...5),
            duration: Double.random(in: 0.5...3),
            delay: Double.random(in: 0.0...1))
        
    }
    
}


