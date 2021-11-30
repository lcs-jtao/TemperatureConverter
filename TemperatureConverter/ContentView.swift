//
//  ContentView.swift
//  TemperatureConverter
//
//  Created by Joyce Tao on 2021-11-30.
//

import SwiftUI

struct ContentView: View {
    // MARK: Stored properties
    @State var celciusDegree: Double = 20.0
    
    // MARK: Computed properties
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Celcius degree input
            Text("Celcius")
                .font(.title2)
                .bold()
            
            Slider(value: $celciusDegree,
                   in: -50.0...50.0,
                   step: 1.0,
                   label: {
                Text("Celcius")
            }, minimumValueLabel: {
                Text("-50")
            },
                   maximumValueLabel: {
                Text("50")
            })
            
            // Celcius degree output
            HStack {
                Spacer()
                Text("\(String(format: "%.0f", celciusDegree))°C")
                    .bold()
                    .font(.title2)
                Spacer()
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Temperature Converter")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
