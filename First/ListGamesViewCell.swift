//
//  ListGamesViewCell.swift
//  First
//
//  Created by Ilya on 02.05.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit

class ListGamesViewCell: UITableViewCell {
    
    var game: Game?
    {
        didSet {
            guard let game = game else {
                return
            }
            self.coverImageView?.image = UIImage(named: game.image)
            self.nameLabel?.text = game.name
            self.yearLabel?.text = "\(game.year)";
        }
        
    }
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var coverImageView: UIImageView!


}
