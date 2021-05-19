//
//  ViewController.swift
//  raywenderlich tutorial
//
//  Created by Kenneth Dubroff on 5/18/21.
//

import UIKit

class MixedEnumViewController: UIViewController {
    
    
    var possibleFlyingMachines: [CarModel]!

    override func viewDidLoad() {
        super.viewDidLoad()
        let car = CarModel.junker
        let wing = CarModel.xWing
        self.possibleFlyingMachines = [
            car,
            wing
        ]
        
        for machine in possibleFlyingMachines {
            print(canItFly(machine))
        }
    }
    
    private func canItFly(_ model: CarModel) -> String {
       
        guard model.canFly // there could be conformance later where a Flyable object can't fly (such as a plane with broken parts). Otherwise just downcasting to Flyable is enough
        else { return  "Your \(model.name) has plummeted like a rock!" }
        
        return "WEEEEEEEEE We're flying our \(model.name) at \(model.airspeedVelocity) M.P.H."
    }

}

