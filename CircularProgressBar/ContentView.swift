//
//  ContentView.swift
//  CircularProgressBar
//
//  Created by iDev0 on 2020/03/03.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var progress: CGFloat = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("0%")
                Slider(value: $progress)
                Text("100%")
            }.padding()
            
            ZStack {
                // 3.
                Circle()
                    .stroke(Color.gray, lineWidth: 20)
                    .opacity(0.1)
                // 4.
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(Color.red, lineWidth: 20)
                    .rotationEffect(.degrees(-90))
                // 5.
                .overlay(
                    Text("\(Int(progress * 100.0))%"))
                     
            }.padding(20)
            .frame(height: 300)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
