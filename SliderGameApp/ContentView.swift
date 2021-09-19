//
//  ContentView.swift
//  SliderGameApp
//
//  Created by Константин Прокофьев on 19.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var checkValue = 0
    @State private var currentValue: Double = 0
    @State private var showAlert = false
    @State private var result = 0
    
    var body: some View {
        VStack {
            Text("Поставьте слайдер ближе к значению \(checkValue)")
            HStack{
                Text("0")
               SliderUIKit(currentValue: $currentValue)
                Text("100")
            }
            .padding(.bottom, 30.0)
            CheckResultButton(showAlert: $showAlert, result: $result, checkValue: $checkValue, currentValue: $currentValue)
            ResetButton(checkValue: $checkValue)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


