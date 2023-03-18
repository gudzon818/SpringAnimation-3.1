//
//  Model.swift
//  SpringAnimation 3.1
//
//  Created by user on 18.03.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func randomAnimation() -> Animation {
        Animation(
            preset: DataStore.shared.animation.randomElement()?.rawValue ?? "",
            curve: DataStore.shared.curve.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.5...5),
            duration: Double.random(in: 0.1...3),
            delay: Double.random(in: 0.1...1)
        )
        
    }
}
