//
//  GameModels.swift
//  TicTacToe
//
//  Created by Nicolas on 16/05/23.
//

import Foundation

enum GameType {
    case single, bot, peer, undetermined
    
    var description: String {
        switch self {
        case .single:
            return "Share your iPhone and play against a friend"
        case .bot:
            return "Play against this iPhone"
        case .peer:
            return "Invite someone near you who has this app running to play"
        case .undetermined:
            return ""
        }
    }
}
