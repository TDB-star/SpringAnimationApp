//
//  DataManager.swift
//  SpringAnimationApp
//
//  Created by Tatiana Dmitrieva on 04/08/2021.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animation = Spring.AnimationPreset.allCases

    
    var force = Double.random(in: 0...1)
    var duration = Double.random(in: 0...1)
    var delay = Double.random(in: 0...1)
    var velocity = Double.random(in: 0...1)
    
   private init() {}
    
}

