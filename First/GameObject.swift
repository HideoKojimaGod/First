//
//  GameObject.swift
//  First
//
//  Created by Ilya on 01.06.2018.
//  Copyright © 2018 csu. All rights reserved.
//

import UIKit
import RealmSwift

class GameObject: Object {        
        @objc dynamic var year = 1
        @objc dynamic var image = ""
        @objc dynamic var name = ""
        @objc dynamic var desc = ""
        @objc dynamic var platforms = [""]
        @objc dynamic var devCompany = ""
        @objc dynamic var countPlayers = 0
    
}
