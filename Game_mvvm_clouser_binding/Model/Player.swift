//
//  Player.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import Foundation

class Player: NSObject {
    
    let identifier: String
    var name: String
    
    init(name: String, identifier: String) {
        self.name = name
        self.identifier = identifier
    }
}
