//
//  ContentView.swift
//  PalCompanionJSON
//
//  Created by Florian on 02.02.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewViewModel()

    var body: some View {
        VStack {
            Text("Pal-Daten anzeigen")
                .padding()

//            Button("Daten laden und drucken") {
//                viewModel.loadPalData()
//                viewModel.printPalData()
//            }
            
        }
        
    }
}


#Preview {
    ContentView()
}
