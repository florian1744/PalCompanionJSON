//
//  SuitabilityView.swift
//  PalCompanionJSON
//
//  Created by Florian on 18.02.24.
//

import SwiftUI

struct SuitabilityView: View {
    //
    var suitabilities: [Suitability]
    //    @State var backgroundCol: Color = Color.white
    
    
    var body: some View {
        
        ForEach(suitabilities, id: \.self) { suitability in
            suitability.level != 0 ?
            HStack {
                Text(suitability.type)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                ProgressView(value: (Float(suitability.level) / 5))
                    .tint(colorForSuitabilityType(type: suitability.type))
                    .scaleEffect(x: 1, y: 1.75)
                
                Text(String(suitability.level))
                
                
            }
            .padding()
            : nil
        }
    }
    
    func colorForSuitabilityType(type: String) -> Color {
        switch type {
        case "cooling":
            Color.cooling
        case "farming":
            Color.farming
        case "gathering":
            Color.gathering
        case "generating_electricity":
            Color.generatingElectricity
        case "handiwork":
            Color.handwork
        case "kindling":
                .red
        case "lumbering":
            Color.lumbering
        case "medicine_production":
            Color.medicine
        case "mining":
            Color.mining
        case "planting":
            Color.planting
        case "transporting":
            Color.transporting
        case "watering":
            Color.watering
            
        default:
                .blue
        }
        
    }
    
}

#Preview {
    SuitabilityView(suitabilities: [Suitability(type: "kindling", level: 1), Suitability(type: "gathering", level: 4), Suitability(type: "generating_electricity", level: 4)])
}

