//
//  ListGamesViewCell.swift
//  First
//
//  Created by Ilya on 02.05.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit

class ListGamesViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var coverImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
