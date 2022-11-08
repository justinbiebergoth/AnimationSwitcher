//
//  DataStore.swift
//  AnimationSwitcher
//
//  Created by hiirari on 02.11.2022.
//

import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animations = AnimationPreset.self
    let curve = AnimationCurve.self
    
    private init() {}
}
