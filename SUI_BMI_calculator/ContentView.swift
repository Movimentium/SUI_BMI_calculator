//  ContentView.swift
//  SUI_BMI_calculator
//  Created by Miguel Gallego on 14/10/25.
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 18) {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Spacer()
            
            MyCardView()
            
            Spacer()
        }
//        .frame(minWidth: .infinity)
        .border(.red)
        .padding()
    }
}

#Preview {
    ContentView()
}

/*
 
 */

struct MyCardView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("Placeholder")
                .padding(20)
        }
        .padding(.vertical)
        .background(Color.card.bg)
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .shadow(color: .card.blackShadow, radius: 5, x: 0, y: 2)
    }
}
