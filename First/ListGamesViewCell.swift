//
//  ListGamesViewCell.swift
//  First
//
//  Created by Ilya on 02.05.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit
import AlamofireImage

class ListGamesViewCell: UITableViewCell {
    
    var game: Game?
    {
        didSet {
            guard let game = game else {
                return
            }
            setCell(game)
        }
        
    }
    
    func setCell(_ game: Game) {
        let url = URL(string: game.image) ?? URL(string: "https://bumper-stickers.ru/26762-thickbox_default/znak-voprosa.jpg")!
        self.coverImageView?.af_setImage(withURL: url)
        //imageView.af_setImage(withURL: url)
        self.nameLabel?.text = game.name
        self.yearLabel?.text = "\(game.year)";
    }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var coverImageView: UIImageView!


}
