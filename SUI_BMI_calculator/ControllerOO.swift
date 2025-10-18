//  ControllerOO.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 18/10/25.
import Observation
import Foundation

@Observable final class ControllerOO {
    var weight: Double = 70
    var height: Double = 170
    @ObservationIgnored var bmi: Double {
        let heightInMeters = height / 100
        return weight / pow(heightInMeters, 2)
    }
    @ObservationIgnored var bmiCategory: BMICategory {
        return BMICategory.init(withBMI: bmi)
    }
    
    let heightRange: ClosedRange<Double> = 60...240
    
    func onBtnMinus() {
        weight -= 0.5
    }
    
    func onBtnPlus() {
        weight += 0.5
    }
        
}

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
}
