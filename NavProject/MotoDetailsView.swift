//
//  MotoDetailsView.swift
//  NavProject
//
//  Created by Vasichko Anna on 06.07.2022.
//

import SwiftUI

struct MotoDetailsView: View {
    let moto: Motorcycle
    
    var body: some View {
        Text(moto.name)
            .font(.title)
            .navigationTitle(moto.name)
    }
}

