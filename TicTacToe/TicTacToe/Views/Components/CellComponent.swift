//
//  CellComponent.swift
//  TicTacToe
//
//  Created by Vinay Rajan S on 31/05/25.
//

import SwiftUI


struct Cell: View {
    var symbol: String?
    var onTap: () -> Void
        
    var body: some View {
        Text(symbol ?? "")
            .font(.system(size: 36, weight: .bold, design: .default))
            .frame(width: 50, height: 50)
            .foregroundColor(.black)
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(2)
            .onTapGesture {
                onTap()
            }
            
    }
    
}

