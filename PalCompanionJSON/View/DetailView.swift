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
            Text(pal.description)
        }
    }
}

#Preview {
    DetailView(pal: Pal.init(id: 01, key: "example_001", image: "pic", name: "example name", wiki: "wiki example", 
                             types: ["example_type", "example_type2"], imageWiki: "example_image_wiki", suitability: [Suitability(type: "example_type", level: 4)],
                             drops: ["example_drop"], aura: Aura(name: "aura_name", description: "aura_description"), description: "desc",
                             skills: [Skill(level: 666, name: "skill_name", type: "skill_type", cooldown: 1000, power: 10000, description: "skill_desc")]))
}
