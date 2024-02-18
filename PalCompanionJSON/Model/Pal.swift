//
//  Pal.swift
//  PalCompanionJSON
//
//  Created by Florian on 02.02.24.
//

import Foundation

struct Pal: Identifiable, Decodable {

    
    let id: Int
    let key: String
    let image: String
    let name: String
    let wiki: String
    let types: [String]
    let imageWiki: String
    let suitability: [Suitability]
    let drops: [String]
    let aura: Aura
    let description: String
    let skills: [Skill]
    
    
}

struct Suitability: Decodable, Hashable {
    let type: String
    let level: Int
}

struct Aura: Decodable {
    let name: String
    let description: String
}

struct Skill: Decodable {
    let level: Int
    let name: String
    let type: String
    let cooldown: Int
    let power: Int
    let description: String
}
