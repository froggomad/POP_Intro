# POP_Intro
## Exploring different ways to classify business logic using Protocol Oriented Programming
This example was modified from https://www.raywenderlich.com/6742901-protocol-oriented-programming-tutorial-in-swift-5-1-getting-started

In our app, a Bird can fly, or not fly. Think of an Eagle... can it fly? Now think of a penguin... can it fly?<br>
A car can fly or not fly as well... a famous inventor finally got the FAA's approval and we have a production-model flying car!
 
### How do we handle this using protocols rather than subclassing?
 
First we define a protocol, Flyable. Birds can fly due to a multitude of reasons, but the most typical one people think of is they have wings.<br> 
That said, our flying car actually doesn't have wings, but is saucer shaped.<br>
So in our world, an object doesn't require wings to fly...<br>
As such, our common property will simply be AirSpeed Velocity

```swift
protocol Flyable {
    var airspeedVelocity: Double { get }
}
```

And we'll need a protocol to define our rules for what a bird is.<br>
We extend the protocol here to add default functionality.<br>
If a bird is `Flyable`, it `canFly`

```swift
protocol Bird {
    var name: String { get }
}

extension Bird {
  var canFly: Bool { self is Flyable }
}
```

Finally, we'll need business rules to define a Car.
We'll also make a Flyable car, so we'll add default functionality

```swift
protocol Car {
    var name: String { get }
    var wheels: Int { get }
}

extension Car {
    var canFly: Bool { self is Flyable }
}
```

Now we can make different concrete types that specify different types of cars and their individual rules

```swift
struct FlyingCar: Flyable, Car {
    var airspeedVelocity: Double = 400
    var name: String = "Flying Car, Model 1"
    var wheels: Int = 4
}


struct StandardCar: Car {
    var name: String = "Standard model car"    
    var wheels: Int = 4
}
```

let car = StandardCar()
print(car.canFly)
let flyingCar = FlyingCar()
print(flyingCar.canFly)
