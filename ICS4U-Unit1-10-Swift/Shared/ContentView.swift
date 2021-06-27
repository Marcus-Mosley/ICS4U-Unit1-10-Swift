//
// ContentView.swift
// ICS4U-Unit1-10-Swift
//
// Created by Marcus A. Mosley on 2021-01-26
// Copyright (C) 2021 Marcus A. Mosley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var planet: String = ""
    @State private var pos: Int = 0
    
    enum Planets: Int {
        case mercury = 1, venus = 2, earth = 3, mars = 4, jupiter = 5, saturn = 6, uranus = 7, neptune = 8
        
        func place() -> Int { return self.rawValue }
    }
    
    var body: some View {
        VStack {
            Text("\(text)")
                .font(.body)
            TextField("Enter the name of the planet in the Solar System", text: $planet)
                .padding()
            Button("Click Me", action: {
                planet = planet.uppercased()
                pos = position(planet)
                if pos == 0 {
                    text = "\(planet) is not a planet in the Solar System"
                } else {
                    text = "\(planet) is in position \(pos) of the Solar System"
                }
            })
            .padding()
        }
    }
    
    // Returns the Position of the Planet
    func position(_ planet: String) -> Int {
        var pos: Int
        
        switch (planet) {
        case "MERCURY":
            pos = Planets.mercury.place()
        case "VENUS":
            pos = Planets.venus.place()
        case "EARTH":
            pos = Planets.earth.place()
        case "MARS":
            pos = Planets.mars.place()
        case "JUPITER":
            pos = Planets.jupiter.place()
        case "SATURN":
            pos = Planets.saturn.place()
        case "URANUS":
            pos = Planets.uranus.place()
        case "NEPTUNE":
            pos = Planets.neptune.place()
        default:
            pos = 0
        }
        return pos
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
