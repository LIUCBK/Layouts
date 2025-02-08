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
            Text("Awesome!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.indigo)
            
            
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
            .padding()
            
            Rectangle()
                .frame(height: 0)
                .background(.indigo)
        }
        
        
        
        
        
    }
}

#Preview {
    ContentView()
}
