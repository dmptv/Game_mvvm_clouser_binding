//
//  UINib+Loader.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

fileprivate extension UINib {
    
    static func nib(named nibName: String) -> UINib {
        return UINib(nibName: nibName, bundle: nil)
    }
    
    static func loadSingleView(_ nibName: String, owner: Any?) -> UIView {
        return nib(named: nibName).instantiate(withOwner: owner, options: nil)[0] as! UIView
    }
}

// MARK: App Views

extension UINib {
    class func loadPlayerScoreboardMoveEditorView(_ owner: AnyObject) -> UIView {
        return loadSingleView("PlayerScoreboardMoveEditorView", owner: owner)
    }
}
