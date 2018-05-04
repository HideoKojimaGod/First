//
//  ProjectViewController.swift
//  First
//
//  Created by Admin on 21.04.18.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit

class ProjectViewController: UIViewController {

    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var devCompanyLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var platformsLabel: UILabel!
    

    var game: Game?
    var currentGame: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setGame()
        
    }
    
    func setGame() {
        guard let game = game else
        {
            return;
        }
        title = game.name
        coverImageView.image = UIImage(named: game.image)
        yearLabel.text = "\(game.year)"
        devCompanyLabel.text = game.devCompany
        platformsLabel.text = game.platforms.joined(separator: ", ")
        descriptionLabel.text = game.description
    }


}
