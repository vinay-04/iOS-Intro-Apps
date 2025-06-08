//
//  HomeView.swift
//  TicTacToe
//
//  Created by Vinay Rajan S on 31/05/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var cells = Array(repeating: "", count: 9)
    @State private var result = ""
    @State private var gameOver = false
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    var body: some View {
        NavigationView {
            VStack {
                LazyVGrid(columns: columns) {
                    ForEach(0..<9, id: \.self) {
                        cell in Cell(symbol: cells[cell]){
                            handleTap(index: cell)
                        }
                    }
                }
            }
            .navigationBarTitle("Tic Tac Toe")
            .alert(isPresented: $gameOver) {
                Alert(title: Text("Winner"), message: Text("\(result) is winner"))
        }
    }
}
    private func handleTap(index: Int){
        guard cells[index].isEmpty else { return }
        cells[index] = cells.filter(\.isEmpty).count.isMultiple(of: 2) ? "O" : "X"
        
        if let winner = checkWin() {
            result = winner
            gameOver = true
            cells = Array(repeating: "", count: 9)
        }
    }
        
    func checkWin() -> String? {
        if (cells[0] == cells[1] && cells[1] == cells[2] && cells[0] != "") {
            return cells[0]
        }
        if (cells[3] == cells[4] && cells[4] == cells[5] && cells[3] != "") {
            return cells[3]
        }
        if (cells[6] == cells[7] && cells[7] == cells[8] && cells[6] != "") {
            return cells[6]
        }
        if (cells[0] == cells[3] && cells[3] == cells[6] && cells[0] != "") {
            return cells[0]
        }
        if (cells[1] == cells[4] && cells[4] == cells[7] && cells[1] != "") {
            return cells[1]
        }
        if (cells[2] == cells[5] && cells[5] == cells[8] && cells[2] != "") {
            return cells[2]
        }
        if (cells[0] == cells[4] && cells[4] == cells[8] && cells[0] != "") {
            return cells[0]
        }
        if (cells[2] == cells[4] && cells[4] == cells[6] && cells[2] != "") {
            return cells[2]
        }
        return nil
    }
}


#Preview {
    HomeView()
}
