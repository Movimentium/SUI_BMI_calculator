//  CircularButtonStyle.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 19/10/25.
import SwiftUI

struct CircularButtonStyle: ViewModifier {
    var size: CGFloat = 52
    var bgColor: Color = .blue
    var fgColor: Color = .white
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size * 0.4, weight: .bold))
            .frame(width: size, height: size)
            .background(bgColor)
            .foregroundStyle(fgColor)
            .clipShape(Circle())
    }
}

// I don't like this
extension View {
    func circularButtonStyle(size: CGFloat = 52,
                             bgColor: Color = .blue,
                             fgColor: Color = .white) -> some View
    {
        modifier(CircularButtonStyle(size: size,
                                     bgColor: bgColor,
                                     fgColor: fgColor))
    }
}
