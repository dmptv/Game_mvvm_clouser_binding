//
//  UIStoryboard+Loader.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

fileprivate enum Storyboard : String {
    case main = "Main"
}

fileprivate extension UIStoryboard {
    
    static func loadFromMain(_ identifier: String) -> UIViewController {
        return load(from: .main, identifier: identifier)
    }
    // add convenience methods for other storyboards here ...
    
    // ... or use the main loading method directly when instantiating view controller
    // from a specific storyboard
    static func load(from storyboard: Storyboard, identifier: String) -> UIViewController {
        let uiStoryboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        return uiStoryboard.instantiateViewController(withIdentifier: identifier)
    }
}

// MARK: App View Controllers

extension UIStoryboard {
    static func loadGameScoreboardEditorViewController() -> GameScoreboardEditorViewController {
        return loadFromMain("GameScoreboardEditorViewController") as! GameScoreboardEditorViewController
    }
}


