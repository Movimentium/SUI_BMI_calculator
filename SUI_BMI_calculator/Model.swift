//  Model.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 24/10/25.
import SwiftUI

enum BMICategory {
    case underweight
    case normalWeight
    case overweight
    case obesity
    case extremeObesity
    
    init(withBMI bmi: Double) {
        if bmi < 18.5 { self = .underweight;   return }
        if bmi < 25   { self = .normalWeight;  return }
        if bmi < 30   { self = .overweight;    return }
        if bmi < 40   { self = .obesity;       return }
        self = .extremeObesity
    }
    
    var str: String {
        switch self {
        case .underweight:    "underweight"
        case .normalWeight:   "normal weight"
        case .overweight:     "overweight"
        case .obesity:        "obesity"
        case .extremeObesity: "extreme obesity"
        }
    }
    
    var color: Color {
        switch self {
        case .underweight:    Color(hex: 0x21A0E2)
        case .normalWeight:   Color(hex: 0x009688)
        case .overweight:     Color(hex: 0xC39313)
        case .obesity:        Color(hex: 0xFF5722)
        case .extremeObesity: Color(hex: 0xE91E63)
        }
    }
}
