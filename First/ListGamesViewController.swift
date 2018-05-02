//
//  ListGamesViewController.swift
//  First
//
//  Created by Ilya on 01.05.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit

class ListGamesViewController: UIViewController {

    @IBOutlet weak var gameTableView: UITableView!
    let cellID = "game"
    var games : [Game] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGames()

    }

    func setupGames() {
        games = [Game(year:2018, image: "GOW.jpg", name: "God of War", description: "d"),
                 Game(year:2016, image: "FFVX.jpg", name: "Final Fantasy XV", description: "d"),
                 Game(year:2018, image: "FC5.png", name: "Far Cry 5", description: "d")]
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
        let game = games[indexPath.row]
        
        cell?.coverImageView?.image = UIImage(named: game.image)
        cell?.nameLabel?.text = game.name
        cell?.yearLabel?.text = "\(game.year)";
        
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
