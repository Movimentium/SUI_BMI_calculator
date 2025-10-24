//  StyleCard.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 19/10/25.
import SwiftUI

struct StyleCard: ViewModifier {
    var radius = 18
    var bgColor: Color = .card.bg

    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.97, green: 0.95, blue: 0.98))
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .shadow(color: .gray(0.75), radius: 5, x: 0, y: 2)
    }
}
