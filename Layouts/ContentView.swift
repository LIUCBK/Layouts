//
//  ContentView.swift
//  Layouts
//
//  Created by 刘佳雨 on 2025/2/2.
//

import SwiftUI

struct ContentView: View {
    @State private var stringName = "When the Genius Bar Needs Help, They Call You!"
    
    var body: some View {
        
        
        VStack(spacing: 0) {
            
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.goldBC)
                .padding()
                .background(.maroonBC)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
            Text(stringName)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .padding()
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            //                .border(.orange, width: 2)
            
            Spacer()
            
            HStack{
                Button("Awesome"){
                    stringName = "You Are Awesome!"
                }
                Spacer()
                
                Button("Great"){
                    stringName = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            //            .border(.purple, width: 5)
            .padding()
            
            
        }
        .background(
            Gradient(colors: [.skyBlue,.indigo])
        )
        
    }
}

#Preview {
    ContentView()
}
