//
//  Motorcycle.swift
//  NavProject
//
//  Created by Vasichko Anna on 05.07.2022.
//

import Foundation

struct Motorcycle: Identifiable, Hashable {
    var id = UUID()
    let name: String
    
    static func getMotos() -> [Motorcycle] {
        [
            Motorcycle(name: "Honda"),
            Motorcycle(name: "Yamaha"),
            Motorcycle(name: "Suzuki"),
            Motorcycle(name: "Kawasaki"),
            Motorcycle(name: "Ducati")
        ]
    }
}
