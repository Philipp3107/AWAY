//
//  Test.swift
//  away
//
//  Created by Philipp Kotte on 19.12.23.
//

import SwiftUI

struct Test: View {
    @State private var rotation: Double = 0.0
    private var width: CGFloat = 50
    @State private var height: Bool = false;
    private var offset: CGFloat = 60
    var body: some View {
        VStack{
            ZStack{
                
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(0.0))
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(45))
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(90))
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(135))
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(180))
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(45+180))
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(90+180))
                Rectangle()
                    .cornerRadius(10)
                    .frame(width:height ? 40 : 10, height: height ? 10 : 40)
                    .offset(x: offset)
                    .rotationEffect(.degrees(360-45))
            }.rotationEffect(.degrees(0.0 + rotation))
            
        }.onAppear{
            withAnimation(.easeInOut(duration: 2.0)
                .speed(0.6).repeatForever(autoreverses: false)) {
                    rotation = 360.0
                    
                }
            withAnimation(.easeInOut(duration: 2.0)
                .speed(0.6).repeatForever(autoreverses: true)) {
                    
                    height.toggle()
                }
        }
    }
}

#Preview {
    Test()
}
