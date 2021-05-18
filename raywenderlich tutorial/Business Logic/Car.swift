//
//  Car.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

protocol Car {
    var name: String { get }
    var wheels: Int { get }
}

extension Car {
    var canFly: Bool {
        self is Flyable
    }
}
