//
//  GameInteractor.swift
//  First
//
//  Created by Ilya on 01.06.2018.
//  Copyright © 2018 csu. All rights reserved.
//
import Foundation
import Alamofire

class GameInteractor: NSObject {
    
    let host = "139.59.139.197"
    let port = 8001
    
    func getGames(completion: @escaping ([Game]) -> Void) {
        let method = "horopa/games"
        
        let request = Alamofire.request("http://\(host):\(port)/\(method)")
        request.responseJSON { (response) in
            guard let json = response.result.value as? [String: Any] else {
                completion([])
                return
            }
            
            guard let success = json["success"] as? Bool else {
                completion([])
                return
            }
            
            guard success else {
                completion([])
                return
            }
            
            guard let data = json["data"] as? [String: [[String: Any]]] else {
                completion([])
                return
            }
            
            var games: [Game] = []
            
            for item in data["games"]! {
                guard let game = Game.parse(json: item) else {
                    continue
                }
                
                games.append(game)
            }
            
            completion(games)
        }
        
    }
    
}
