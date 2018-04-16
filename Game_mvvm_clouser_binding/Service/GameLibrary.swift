//
//  GameLibrary.swift
//  Game_mvvm_clouser_binding
//
//  Created by 123 on 16.04.2018.
//  Copyright © 2018 123. All rights reserved.
//

import Foundation

enum GameLibraryNotifications {
    static let GameLibraryGameAdded    = "GameLibraryGameAdded"
    static let GameLibraryGameRemoved  = "GameLibraryGameRemoved"
    static let GameLibraryGameUpdated  = "GameLibraryGameUpdated"
}

protocol GameLibrary {
    func allGames() -> [Game]
    func addGame(_ game: Game) // posts GameLibraryGameAdded notifications
    func removeGame(_ game: Game) // posts GameLibraryGameRemoved notifications
    func updateGame(_ game: Game) // posts GameLibraryGameUpdated notifications
}
