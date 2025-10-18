//  ControllerOO.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 18/10/25.
import Observation

@Observable final class ControllerOO {
    var weight: Double = 70
    var height: Double = 170
    var bmi: Double = -1
    
    func onBtnMinus() {
        weight -= 0.5
    }
    
    func onBtnPlus() {
        weight += 0.5
    }
    
}
