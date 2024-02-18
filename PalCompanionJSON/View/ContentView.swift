//
//  ContentView.swift
//  PalCompanionJSON
//
//  Created by Florian on 02.02.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewViewModel()
    
    init() {
        viewModel.loadPalData()
    }

    var body: some View {
        NavigationSplitView {

//            Button("Daten laden und drucken") {
//                viewModel.loadPalData()
//                viewModel.printPalData()
//            }
            List(viewModel.pal!) { pali in
                NavigationLink {
                    DetailView(pal: pali) //detail
                } label: {
                    Text("\(pali.name)") //row
                }
           
            } .navigationTitle("Paldex")
        } detail: {
            Text("detail")
        }
        
    }
}


#Preview {
    ContentView()
}
