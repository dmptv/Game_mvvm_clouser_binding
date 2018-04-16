//
//  GameScoreboardEditorViewModel.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import Foundation

protocol GameScoreboardEditorViewModel {
    var homeTeam: String { get }
    var awayTeam: String { get }
    
    var time: Dynamic<String> { get }
    var score: Dynamic<String> { get }
    var isFinished: Dynamic<Bool> { get }
    
    var isPaused: Dynamic<Bool> { get }
    func togglePause()
    
    var homePlayers: [PlayerScoreboardMoveEditorViewModel] { get }
    var awayPlayers: [PlayerScoreboardMoveEditorViewModel] { get }
}
