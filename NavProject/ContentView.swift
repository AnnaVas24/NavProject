//
//  ContentView.swift
//  NavProject
//
//  Created by Vasichko Anna on 05.07.2022.
//

import SwiftUI

enum Route: Hashable {
    case car(Car)
    case moto(Motorcycle)
}

struct ContentView: View {
    let cars = Car.getCars()
    let motos = Motorcycle.getMotos()
    
    var body: some View {
        NavigationStack {
            List {
                Section("Cars") {
                    ForEach(cars) { car in
                        NavigationLink(car.name, value: Route.car(car))
                    }
                }
                Section("Motorcycles") {
                    ForEach(motos) { moto in
                        NavigationLink(moto.name, value: Route.moto(moto))
                    }
                }
            }
            .navigationTitle("Cars & Motorcycles")
            .navigationDestination(for: Route.self) { route in
                switch route {
                case let .car(car):
                    CarDetailsView(car: car)
                case let .moto(moto):
                    MotoDetailsView(moto: moto)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
