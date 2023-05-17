//
//  GameSquare.swift
//  TicTacToe
//
//  Created by Nicolas on 16/05/23.
//

import SwiftUI

struct GameSquare {
    var id: Int
    var player: Player?
    
    var image: Image {
        if let player = player {
            return player.gamePiece.image
        } else {
            return Image("none")
        }
    }
    
    static var reset: [GameSquare] {
        var square = [GameSquare]()
        for index in 1...9 {
            square.append(GameSquare(id: index))
        }
        return square
    }
}
