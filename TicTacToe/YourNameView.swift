//
//  YourNameView.swift
//  TicTacToe
//
//  Created by Nicolas on 16/05/23.
//

import SwiftUI

struct YourNameView: View {
    @AppStorage("yourName") var yourName = ""
    @State private var userName = ""
    
    var body: some View {
        VStack {
            Text("This is the name that will be asociated with this device")
            
            TextField("Your Name", text: $userName)
                .textFieldStyle(.roundedBorder)
            
            Button("Set") {
                yourName = userName
            }
            .buttonStyle(.borderedProminent)
            .disabled(userName.isEmpty)
            
            Image("LaunchScreen")
            
            Spacer()
        }
        .padding()
        .navigationTitle("Tic Tac Toe")
        .inNavigationStack()
    }
}

struct YourNameView_Previews: PreviewProvider {
    static var previews: some View {
        YourNameView()
    }
}
