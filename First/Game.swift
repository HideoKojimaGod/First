//
//  Game.swift
//  First
//
//  Created by Ilya on 04.05.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import Foundation
import RealmSwift

public struct Game {
    
    let year: Int
    let image: String
    let name: String
    let description: String
    let platforms: [String]
    let devCompany: String
    let countPlayers: Int
    
    static func parse(json: Dictionary<String, Any>) -> Game? {
        guard let name = json["name"] as? String,
            let year = json["year"] as? Int,
            let description = json["description"] as? String,
            let image = json["image"] as? String,
            let devCompany = json["devCompany"] as? String,
            let countPlayers = json["countPlayers"] as? Int else {
            return nil
        }
        
        guard let platforms = json["platforms"] as? [String] else {
            return nil
        }
        
        return Game(year: year, image: image, name: name, description: description, platforms: platforms, devCompany: devCompany, countPlayers: countPlayers)
    }
    static func toGameObject(game: Game) -> GameObject {
        let gameObj = GameObject()
        gameObj.countPlayers = game.countPlayers
        gameObj.desc = game.description
        gameObj.devCompany = game.devCompany
        gameObj.image = game.image
        gameObj.name = game.name
        gameObj.platforms = game.platforms
        gameObj.year = game.year
        return gameObj
    }
    
}
