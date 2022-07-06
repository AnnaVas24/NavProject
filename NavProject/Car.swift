//
//  Car.swift
//  NavProject
//
//  Created by Vasichko Anna on 05.07.2022.
//

import Foundation

struct Car: Identifiable, Hashable {
    var id = UUID()
    let name: String
    
    static func getCars() -> [Car] {
        [
            Car(name: "Ferrari"),
            Car(name: "Lamborghini"),
            Car(name: "Porsche"),
            Car(name: "Jaguar"),
            Car(name: "Cadillac")
        ]
    }
}
