//
//  ListGamesViewController.swift
//  First
//
//  Created by Ilya on 01.05.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit
import RealmSwift
import Realm

class ListGamesViewController: UIViewController {

    @IBOutlet weak var gameTableView: UITableView!
    let cellID = "game"
    var games : [Game] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

    }
    
    func setup() {
        load()
    }
    
    func load() {
        //let realm = try! Realm()
        
        GameInteractor().getGames { games in
            //try! realm.write {
            //    games.forEach{ game in realm.add(Game.toGameObject(game: game))}
            //}
            self.games = games
            self.gameTableView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension ListGamesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ListGamesViewCell
        
        cell?.game = games[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let gameViewController = self.storyboard?.instantiateViewController(withIdentifier: "ProjectViewController") as? ProjectViewController else {
            return
        }
        
        let game = games[indexPath.row]
        
        gameViewController.game = game
        self.navigationController?.pushViewController(gameViewController, animated: true)
    }
    
}
