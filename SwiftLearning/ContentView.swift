//
//  ContentView.swift
//  SwiftLearning
//
//  Created by Donnukrit Satirakul on 15/8/2566 BE.
//

import SwiftUI


extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth : 180)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    
    
    
    private let imageUrl : String = "https://credo.academy/credo-academy@3x.png"
    
    
    var body: some View {
        VStack {
            // 1. BASIC
            
            //            AsyncImage(url: URL(string: imageUrl))
            
            // 2. SCALE
            
            //            AsyncImage(url: URL(string: imageUrl) , scale: 3.0)
            
            // 3. PLACEHOLDER
            
            //            AsyncImage(url: URL(string: imageUrl)) { image in
            //                image
            //                    .resizable()
            //                    .scaledToFit()
            //            } placeholder: {
            //                Image(systemName: "photo.circle.fill").iconModifier()
            //            }.padding(40)
            
            // 4. PHASE
            //            AsyncImage(url: URL(string: imageUrl)) {
            ////                SUCCESS: Image Successfully load
            ////                FAULURE: The image loaded with error
            ////                EMPTY: No image loaded
            //                phase in
            //                if let image = phase.image {
            //                    image.imageModifier()
            //                } else if phase.error != nil {
            //                    Image(systemName: "ant.circle.fill").iconModifier()
            //                } else {
            //                    Image(systemName: "photo.circle.fill").iconModifier()
            //                }
            //
            //            }
            
            //            5. Animation
            
            AsyncImage(url: URL(string: imageUrl) ,
                       transaction: Transaction(animation:
                            .spring(
                                response: 0.5 ,
                                dampingFraction: 0.6 ,
                                blendDuration: 0.25
                            ))) {
                                phase in
                                switch phase {
                                case .success(let image) :
                                    image.imageModifier()
                                case .failure(_) :
                                    Image(systemName: "ant.circle.fill").iconModifier()
                                case .empty :
                                    Image(systemName: "photo.circle.fill").iconModifier()
                                    
                                @unknown default :
                                    ProgressView()
                                    
                                }
                                
                            }
            
            
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
