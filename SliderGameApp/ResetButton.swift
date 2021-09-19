//
//  ResetButton.swift
//  SliderGameApp
//
//  Created by Константин Прокофьев on 20.09.2021.
//

import SwiftUI
struct ResetButton: View {
    @Binding var checkValue: Int
    
    var body: some View {
        Button("Начать игру") {
            checkValue = Int.random(in: 0...100)
        }
        .frame(width: 150, height: 30)
        .background(Color(#colorLiteral(red: 0.8429709077, green: 0.7496553063, blue: 0.9516430497, alpha: 1)))
        .cornerRadius(30)
        .shadow(color: Color(#colorLiteral(red: 0.7000975013, green: 0.56346035, blue: 0.9834845662, alpha: 1)), radius: 8)
    }
}
