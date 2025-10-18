//  MinimalView.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 17/10/25.
import SwiftUI

struct MinimalView: View {
    @State private var oo = ControllerOO()
    
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 20) {
            
            VStack(alignment: .center, spacing: 0) {
                Text("Weight").font(.system(size: 22, weight: .semibold))
                    .padding(.top)
 
                HStack(alignment: .firstTextBaseline, spacing: 0) {
                    Button {
                        oo.onBtnMinus()
                    } label: {
                        Image(systemName: "minus")
                    }
                    .modifier(CircularButtonStyle(bgColor: .accent))
                    .padding()

                    Text("\(oo.weight.decimals(1)) kg")
                        .font(.system(size: 32, weight: .bold))
                        .frame(maxWidth: .infinity)
                    
                    Button {
                        oo.onBtnPlus()
                    } label: {
                        Image(systemName: "plus")
                    }
                    .modifier(CircularButtonStyle(bgColor: .accent))
                    .padding()
                }
            }
            .modifier(CardStyle())

            VStack(alignment: .center, spacing: 0) {
                Text("Height").font(.system(size: 22, weight: .semibold))
                    .padding(.vertical)
                Text("\(oo.height.decimals(0)) cm")
                    .font(.system(size: 32, weight: .bold))
                Slider(value: $oo.height, in: oo.heightRange, step: 1.0)
                    .tint(Color.accent)
                    .padding()
                    
                
            }
            .modifier(CardStyle())

            VStack(alignment: .center, spacing: 0) {
                Text("BMI").font(.system(size: 22, weight: .semibold))
                    .padding(.vertical)
                 Text(oo.bmi.decimals(2))
                    .font(.system(size: 32, weight: .bold))
                    .padding(.top, 20)
                Text(oo.bmiCategory.str).font(.system(size: 22, weight: .semibold))
                    .padding(.bottom, 40)
            }
            .modifier(CardStyle())
                        
            
            Spacer()
        }
        .padding()
        .background(Color.card.bg)
        
    }
}

struct CardStyle: ViewModifier {
    var radius = 18
    var bgColor: Color = .card.bg

    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .background(Color(red: 0.97, green: 0.95, blue: 0.98))
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .shadow(color: .black.opacity(0.25), radius: 5, x: 0, y: 2)
    }
}

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

extension Double {
    func decimals(_ decimals: Int = 2) -> String {
        self.formatted(.number.precision(.fractionLength(decimals)))
    }
}

#Preview {
    MinimalView()
}
