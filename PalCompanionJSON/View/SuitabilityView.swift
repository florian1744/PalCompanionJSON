//
//  SuitabilityView.swift
//  PalCompanionJSON
//
//  Created by Florian on 18.02.24.
//

import SwiftUI

struct SuitabilityView: View {
    
    var suitabilities: [Suitability]
    @State var backgroundCol: Color = Color.white
    
    
    var body: some View {
        HStack {
            
            ForEach(suitabilities, id: \.self) { elem in
                
                ZStack {
                
                Image("\(elem.type)Icon")
                Text(elem.type)
                    .padding(.trailing)
                
            }
            }
            .background(backgroundCol)
            .clipShape(.capsule)
            .padding()
        }
    }
    private func getBackgroundColor(for type: String) -> Color {
        return .white
    }
    
}

#Preview {
    SuitabilityView(suitabilities: [Suitability(type: "Kindling", level: 2)], backgroundCol: Color.red)
}

