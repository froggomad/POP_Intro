//
//  ThreeQuestions.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

enum UnladenSwallow: Bird, Flyable {
  case african
  case european
  case unknown
  
  var name: String {
    switch self {
    case .african:
      return "African"
    case .european:
      return "European"
    case .unknown:
      return "What do you mean? African or European?"
    }
  }
  
  var airspeedVelocity: Double {
    switch self {
    case .african:
      return 10.0
    case .european:
      return 9.9
    case .unknown:
      fatalError("You are thrown from the bridge of death!")
    }
  }
}

extension UnladenSwallow {
    var canFly: Bool {
        self != .unknown
    }
}
