//
//  ViewController.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var gameLibrary: GameLibrary? {
        didSet {
            showGameScoreboardEditorViewController()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showGameScoreboardEditorViewController()
    }
    
    // MARK: Private
    
    fileprivate func showGameScoreboardEditorViewController() {
        if !self.isViewLoaded {
            return
        }
        
        guard let gameLibrary = gameLibrary else {
            return
        }
        
        if let game = gameLibrary.allGames().first {
            
            let controller = UIStoryboard.loadGameScoreboardEditorViewController()
            let viewModel = GameScoreboardEditorViewModelFromGame(withGame: game)
            controller.viewModel = viewModel
            
            self.insertChildController(controller, intoParentView: self.view)
        }
    }
}





