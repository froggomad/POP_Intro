//
//  Flyable.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

protocol Flyable {
    var airspeedVelocity: Double { get }    
}

protocol SometimesFlyable {
    var canFly: Bool { get }
}
