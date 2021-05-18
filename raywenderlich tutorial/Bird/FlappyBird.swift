//
//  FlappyBird.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

struct FlappyBird: Bird, Flyable {
    let name: String
    let flappyAmplitude: Double
    let flappyFrequency: Double
    
    var airspeedVelocity: Double {
        3 * flappyFrequency * flappyAmplitude
    }
}
