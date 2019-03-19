//: Playground - noun: a place where people can play

import Foundation

func pickOne(input: [String]) -> String {
    let count = UInt32(input.count);
    let rand = arc4random_uniform(count);
    return input[Int(rand)];
}

var mustang = [ "Angels", "A's", "Astros", "Diamondbacks", "Giants", "Pirates", "Rangers", "Rockies", "Twins" ]
var bronco = [ "Angels", "A's", "Astros", "Brewers", "Diamondbacks",
               "Giants", "Pirates", "Rangers", "Rockies", "Twins" ]

var pony = [ "Angels", "A's", "Astros", "Giants", "Pirates", "Rangers", "Rockies", "Twins" ]

var colt = [ "Bats", "Bulls", "Dash", "Hooks", "River Dogs" ]

let divisions = [ mustang, bronco, pony, colt ]

for division in divisions {
    var divCopy = division
    var randomized: [String] = []

    print("number of teams is: \(divCopy.count)")

    while divCopy.count > 1 {
        let one = pickOne(input: divCopy)
        randomized.append(one)
        divCopy = divCopy.filter { $0 != one }
    }

    randomized.append(divCopy[0])

    print(randomized)
}
