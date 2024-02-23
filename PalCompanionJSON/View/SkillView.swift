////
////  SkillView.swift
////  PalCompanionJSON
////
////  Created by Florian on 23.02.24.
////
//
//import SwiftUI
//
//struct SkillView: View {
//    
//    var skills: [Skill]
//    
//    var body: some View {
//        HStack {
//            Spacer()
//            Spacer()
//            Text("Type")
//            Spacer()
//            Text("CD")
//            Text("Power")
//        }
//        ForEach(skills) { skill in
//            HStack {
//                VStack {
//                    Text(skill.name)
//                    Text("\(skill.level)")
//                }
//                Spacer()
//                Spacer()
//                Image("Type\(skill.type.capitalized)Icon") // TODO: Add assets for each type
//      
//                Text("\(skill.cooldown)")
//                Spacer()
//                Text("\(skill.power)")
//            }
//            .onAppear {
//                print(skill.type.uppercased())
//            }
//            
//        }
//    }
//}
//
//#Preview {
//    SkillView(skills: [Skill(level: 3, name: "Farming", type: "normal", cooldown: 1, power: 100, description: "go to uncreativity jail. Bonk!")])
//
//}
