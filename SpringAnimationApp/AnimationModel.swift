//
//  AnimationModel.swift
//  SpringAnimationApp
//
//  Created by Tatiana Dmitrieva on 04/08/2021.
//

import Foundation

struct AnimationModel {
//    let preset: String
//    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    let velocity: Double
    
    var totalInformation: String {
        "force: \(String(format: "%.2f", force)) duration: \(String(format: "%.2f", duration)) delay: \(String(format: "%.2f", delay)) velocity: \(String(format: "%.2f", velocity))"
    }
}

extension AnimationModel {
    
    static func getAnimation() -> [AnimationModel] {
        var animations: [AnimationModel] = []
        
        let forces = DataManager.shared.force
        let durations = DataManager.shared.duration
        let delays = DataManager.shared.duration
        let velocities = DataManager.shared.velocity
        
        for _ in 0...1 {
            let a = AnimationModel(force: forces, duration: durations, delay: delays, velocity: velocities)
            
            animations.append(a)
        }
        return animations
       
        }
        
    
    }


