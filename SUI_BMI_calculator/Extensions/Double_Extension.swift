//  Double_Extension.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 18/10/25.
import Foundation

extension Double {
    func decimals(_ decimals: Int = 2) -> String {
        self.formatted(.number.precision(.fractionLength(decimals)))
    }
}
