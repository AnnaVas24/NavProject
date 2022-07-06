//
//  CarDetailsView.swift
//  NavProject
//
//  Created by Vasichko Anna on 06.07.2022.
//

import SwiftUI

struct CarDetailsView: View {
    let car: Car
    
    var body: some View {
        Text(car.name)
            .font(.title)
            .navigationTitle(car.name)
    }
}


