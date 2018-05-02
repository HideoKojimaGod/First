//
//  ProjectViewController.swift
//  First
//
//  Created by Admin on 21.04.18.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit

struct Game {
    let year: Int
    let image: String
    let name: String
    let description: String;
}

class ProjectViewController: UIViewController {

    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameYear: UILabel!
    
//    var games: [Game] = []
    var game: Game?
    var currentGame: Int = 0
    
//    func setupGames() {
//        games = [Game(year:2018, image: "GOW.jpg", name: "God of War", description: "d"),
//                Game(year:2016, image: "FFVX.jpg", name: "Final Fantasy XV", description: "d"),
//                Game(year:2018, image: "FC5.png", name: "Far Cry 5", description: "d")]
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupGames()
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let game = game else
        {
            return;
        }
        title = game.name
        gameImage.image = UIImage(named: game.image)
        //gameName.text = game.name
        gameYear.text = "\(game.year)"
        
    }
    
//    func setGame(_ numGame: Int) {
//        gameImage.image = UIImage(named: games[numGame].image)
//        gameName.text = games[numGame].name
//        gameYear.text = "\(games[numGame].year)"
//    }
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//    @IBAction func actionNextimage(_ sender: UIButton) {
//        if currentGame == games.count - 1 {
//            currentGame = 0
//        } else {
//            currentGame = currentGame + 1
//        }
//        setGame(currentGame)
//
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
