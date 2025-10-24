//  ContentView.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 14/10/25.
import SwiftUI

struct ContentView: View {
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


#Preview {
    ContentView()
}
