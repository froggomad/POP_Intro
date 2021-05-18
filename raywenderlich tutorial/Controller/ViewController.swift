//
//  ViewController.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

import UIKit

class ViewController: UIViewController {
    
    var flyingMachines: [Flyable]!

    override func viewDidLoad() {
        super.viewDidLoad()
        let car = CarModel.junker
        let wing = CarModel.xWing
        self.flyingMachines = [
            car,
            wing
        ]
        
        for machine in flyingMachines {
            print(canItFly(machine))
        }
    }
    
    private func canItFly(_ flyable: Flyable) -> String {
        if flyable.canFly {
            return "WEEEEEEEEE We're flying our \(String(describing: flyable)) at \(flyable.airspeedVelocity)"
        } else {
            return "Your \(String(describing: flyable)) has plummeted like a rock!"
        }
    }

}

