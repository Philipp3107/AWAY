//
//  ContentView.swift
//  away
//
//  Created by Philipp Kotte on 19.12.23.
//

import SwiftUI

struct ContentView: View {
    var color: [Color] = [Color.purple ,Color.red ,Color.orange, Color.yellow]
    var color_dark: [Color] = [Color.purple ,Color.red ,Color.orange, Color.green]
    var color_light: [Color] = [Color.green, Color.red, Color.orange, Color.purple]
    @State var degreesRotating = 0.0
    @Environment(\.colorScheme) var scheme
    @Binding var fetching: Bool;
    @State var dissapear: Double = 1.0
    var body: some View {
        
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack{
                LinearGradient(colors: scheme == .dark ? color_dark :  color_light, 
                               startPoint: .bottom,
                               endPoint: .top)
                               .ignoresSafeArea()
                               .blur(radius: scheme == .dark ? 70.0 : 35.0)
                               .brightness(scheme == .dark ? -0.4 : 0.0)
            VStack {
                Spacer()
                Test()
                Spacer()
                    .frame(height: 100)
                Text("AWAY")
                    .fontWeight(.bold)
                    .fontWidth(.expanded)
                    .font(.title)
                    .onTapGesture {
                        withAnimation(.linear(duration: 1.0)){
                            dissapear = 0.0
                            
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                            fetching = false;
                        }
                    }
                Text(fetching.description)
                    Spacer()
                    .frame(height: 300)
                }
            .padding()
            }.opacity(dissapear)
            .onAppear {
                //Start Animation
                withAnimation(.linear(duration: 1)
                    .speed(0.5).repeatForever(autoreverses: false)) {
                        degreesRotating = 360.0
                    }
                //Start fetching Data
                }
        }
        
    }
}

#Preview {
    
    ContentView(fetching: .constant(true))
}
