//
//  TicTacToeApp.swift
//  TicTacToe
//
//  Created by Nicolas on 16/05/23.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var game = GameService()
    
    var body: some Scene {
        WindowGroup {
            StartView()
                .environmentObject(game)
        }
    }
}
