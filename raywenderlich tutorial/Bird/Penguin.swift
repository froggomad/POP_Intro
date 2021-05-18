//
//  Penguin.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

struct Penguin: Bird {
  let name: String
}

struct SwiftBird: Bird, Flyable {
  var name: String { "Swift \(version)" }
  let version: Double
  private var speedFactor = 1000.0
  
  init(version: Double) {
    self.version = version
  }

  // Swift is FASTER with each version!
  var airspeedVelocity: Double {
    version * speedFactor
  }
}
