//  Color_Extension.swift
//  SUI_BMI_calculator
import UIKit
import SwiftUI

// Apps Colors
extension Color {
    
    struct card {
        static let bg = Color(red: 0.97, green: 0.95, blue: 0.98)
        static let blackShadow = Color.gray(0.25) // == Color.black.opacity(0.25) but solid color
    }
         
    static let accent = Color(red: 0.4, green: 0.31, blue: 0.64)
    
}

extension Color {
    
    static func gray(_ scale: Double = 0.5) -> Color {
        return Color(red: scale, green: scale, blue: scale)
    }
    
    //  Solid Color with rgb components from 0 to 255
    //  Usage:
    //  let color = Color(r: 0xFF, g: 0xFF, b: 0xFF)
    init(r: Int, g: Int, b: Int) {
        assert(r >= 0 && r <= 255, "Invalid red component")
        assert(g >= 0 && g <= 255, "Invalid green component")
        assert(b >= 0 && b <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(r) / 255.0,
                  green: CGFloat(g) / 255.0,
                  blue: CGFloat(b) / 255.0, opacity: 1.0)
    }
    
    //  Usage:
    //  let color2 = UIColor(rgb: 0xFFFFFF)
    init(hex: Int) {
        self.init(
            r: (hex >> 16) & 0xFF,
            g: (hex >> 8) & 0xFF,
            b: hex & 0xFF
        )
    }
}


// MARK: - Legacy
extension UIColor {
    //  Solid Color with rgb components from 0 to 255
    //  Usage:
    //  let color = UIColor(r: 0xFF, g: 0xFF, b: 0xFF)
    convenience init(r: Int, g: Int, b: Int) {
        assert(r >= 0 && r <= 255, "Invalid red component")
        assert(g >= 0 && g <= 255, "Invalid green component")
        assert(b >= 0 && b <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(r) / 255.0,
                  green: CGFloat(g) / 255.0,
                  blue: CGFloat(b) / 255.0, alpha: 1.0)
    }
    
    //  Usage:
    //  let color2 = UIColor(hex: 0xFFFFFF)
    convenience init(hex: Int) {
        self.init(
            r: (hex >> 16) & 0xFF,
            g: (hex >> 8) & 0xFF,
            b: hex & 0xFF
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

