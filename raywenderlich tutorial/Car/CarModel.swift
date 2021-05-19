//
//  RaceCar.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

/// Note: While all cars conform to Flyable, default implementations are overriden so only certain cars are able to fly
enum CarModel: Car, SometimesFlyable {
    case junker
    case delorean
    case xWing
    
    var wheels: Int {
        switch self {
        case .xWing:
            return 0
        default:
            return 4
        }
    }
    
    var name: String {
        return String(describing: self).capitalized
    }
    // Override default behavior of Flyable
    var canFly: Bool {
        switch self {
        case .xWing:
            return true
        default:
            return false
        }
    }
    
    var airspeedVelocity: Double {
        switch self {
        case .xWing:
            return 100_000
        default:
            return 0
        }
    }
}
