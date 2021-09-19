//
//  CheckResultButton.swift
//  SliderGameApp
//
//  Created by Константин Прокофьев on 20.09.2021.
//

import SwiftUI

struct CheckResultButton: View {
    @Binding var showAlert: Bool
    @Binding var result: Int
    @Binding var checkValue: Int
    @Binding var currentValue: Double
    
    var body: some View {
        Button("Проверь меня!") {
            showAlert.toggle()
            result = computeScore()
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Результат игры"),
                message: Text("Вы были близки на \(result) %"),
                dismissButton: .default(Text("Готово"))
            )
        }
        .frame(width: 150, height: 30)
        .background(Color(#colorLiteral(red: 0.8429709077, green: 0.7496553063, blue: 0.9516430497, alpha: 1)))
        .cornerRadius(30)
        .shadow(color: Color(#colorLiteral(red: 0.7000975013, green: 0.56346035, blue: 0.9834845662, alpha: 1)), radius: 8)
        .padding(.bottom, 100.0)
    }
    
    private func computeScore() -> Int {
        let difference = abs(checkValue - lround(currentValue))
        return 100 - difference
    }
}

