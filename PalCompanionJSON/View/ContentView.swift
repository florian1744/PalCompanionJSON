//
//  ContentView.swift
//  PalCompanionJSON
//
//  Created by Florian on 02.02.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewViewModel()
    
    @State private var searchText = ""
    
    
    
    
    init() {
        viewModel.loadPalData()
    }
    
    var body: some View {
        
        NavigationSplitView {
            
            List(viewModel.filteredPal(searchText: searchText)) { pali in
                NavigationLink {
                    DetailView(pal: pali) //detail
                } label: {
                    HStack {
                        AsyncImage(url: URL(string: pali.imageWiki)) { image in
                            image.resizable()
                        } placeholder: {
                            Image("PalPlaceholder")
                        }
                        .frame(width: 30, height: 30)
                        Text(pali.name)
                        Spacer()
                        Text("No. \(pali.key)")
                            .font(.caption)
                    } //row
                }
                
            }
            .navigationTitle("Paldex")
            .searchable(text: $searchText, placement: .toolbar, prompt: "Search Pal")
            
        } detail: {
            Text("detail")
        }
        
        
    }
}


#Preview {
    ContentView()
}
