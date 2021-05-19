//
//  Bird.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//


protocol Bird: SometimesFlyable {
    var name: String { get }
}

extension Bird {
    var canFly: Bool { self is Flyable }
}
