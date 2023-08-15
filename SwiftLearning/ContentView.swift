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
            Link(destination: URL(string: "https://apple.com")!) {
                HStack(content: {
                    Image(systemName: "apple.logo")
                    Text("Apple Store")
                })
            }
                .buttonStyle(.borderedProminent)
                .tint(Color.blue)
                .font(.largeTitle)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule().fill(Color.blue)
                )
            Link("Go to Apple", destination: URL(string: "https://apple.com")!)
                .buttonStyle(.borderedProminent)
                .tint(Color.red)
            Link("Go to Google", destination: URL(string: "https://google.com")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
                .tint(Color.red)
            Link("Send an Email", destination: URL(string: "mailto:donnukrit.s@gmail.com")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
                .tint(Color.red)
            Link("Call", destination: URL(string: "tel:+66123456789")!)
             
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
