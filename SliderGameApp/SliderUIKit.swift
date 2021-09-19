//
//  sliderUIKit.swift
//  SliderGameApp
//
//  Created by Константин Прокофьев on 19.09.2021.
//

import SwiftUI


struct SliderUIKit: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
    
    @Binding var currentValue: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider(frame: .zero)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = Float(currentValue)
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged),
            for: .valueChanged)
        
        return slider
    }
    
    func updateUIView(_ view: UISlider, context: Context) {
        view.value = Float(self.currentValue)
    }
}

extension SliderUIKit {
    class Coordinator: NSObject {
        var currentValue: Binding<Double>
        
        init(currentValue: Binding<Double>) {
            self.currentValue = currentValue
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            self.currentValue.wrappedValue = Double(sender.value)
        }
    }
}


struct SliderUIKit_Previews: PreviewProvider {
    static var previews: some View{
        SliderUIKit(currentValue: .constant(50))
    }
}
