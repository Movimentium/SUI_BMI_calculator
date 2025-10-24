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
