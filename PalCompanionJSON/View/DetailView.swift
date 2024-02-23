//
//  DetailView.swift
//  PalCompanionJSON
//
//  Created by Florian on 05.02.24.
//

import SwiftUI

struct DetailView: View {
    
    let pal: Pal
    
    var body: some View {
        VStack {
            Text(pal.name)
                .font(.largeTitle)
            AsyncImage(url: URL(string: pal.imageWiki)) { image in
                image.resizable()
            } placeholder: {
                Image("PalPlaceholder")
            }
            .frame(width: 250, height: 250)
            
            Text(pal.aura.description)
                .padding()
            
            SuitabilityView(suitabilities: pal.suitability)
            Spacer()
        }
    }
}

#Preview {
    DetailView(pal: Pal.init(id: 1, key: "example_001", image: "pic", name: "example name", wiki: "wiki example",
                             types: ["Kindling", "Farming"], imageWiki: "https://static.wikia.nocookie.net/palworld/images/0/01/Lamball_menu.png/", suitability: [Suitability(type: "example_type", level: 4), Suitability(type: "example_type", level: 4), Suitability(type: "example_type", level: 4)],
                             drops: ["example_drop"], aura: Aura(name: "aura_name", description: "When activated, equips to the player and becomes a shield.\nSometimes drops Wool when assigned to Ranch."), description: "desc",
                             skills: [Skill(level: 666, name: "skill_name", type: "skill_type", cooldown: 1000, power: 10000, description: "skill_desc")]))
}
