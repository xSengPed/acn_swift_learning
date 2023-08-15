//
//  ContentView.swift
//  SwiftLearning
//
//  Created by Donnukrit Satirakul on 15/8/2566 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("iOS")
                .font(.system(size: 180))
                .fontWeight(.black)
                .foregroundStyle(LinearGradient(
                    colors: [.blue,.purple,.blue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                ))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
