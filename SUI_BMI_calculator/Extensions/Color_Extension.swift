//  Color_Extension.swift
//  SUI_BMI_calculator
import UIKit
import SwiftUI

extension Color {
    
    struct card {
        static let bg = Color(red: 0.97, green: 0.95, blue: 0.98)
        static let blackShadow = Color.gray(0.25) // == Color.black.opacity(0.25) but solid color
    }
         
    static let accent = Color(red: 0.4, green: 0.31, blue: 0.64)
    
    static func gray(_ scale: Double = 0.5) -> Color {
        return Color(red: scale, green: scale, blue: scale)
    }
}

// MARK: - Legacy
extension UIColor {
    
    //  Usage:
    //  let color = UIColor(red: 0xFF, green: 0xFF, blue: 0xFF)
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0   && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0  && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    //  Usage:
    //  let color2 = UIColor(rgb: 0xFFFFFF)
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
    
    // Get a image from color. Usage:
    // let image0 = UIColor.orange.image(CGSize(width: 128, height: 128))
    // let image1 = UIColor.yellow.image()
    func image(_ size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { rendererContext in
            self.setFill()
            rendererContext.fill(CGRect(origin: .zero, size: size))
        }
    }
  
}

