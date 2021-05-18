//
//  Bird.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

extension Bird {
  // Flyable birds can fly!
  var canFly: Bool { self is Flyable }
}
