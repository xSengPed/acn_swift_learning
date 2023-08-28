//
//  CardView.swift
//  SwiftLearning
//
//  Created by Donnukrit Satirakul on 16/8/2566 BE.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            
            Circle()
                .fill(LinearGradient(colors: [
                    Color("ColorIndigoMedium"),
                    Color("ColorSalmonLight")
                ],
                startPoint: .bottomLeading,
                endPoint: .bottomTrailing)
                )
                .frame(width: 256  ,height: 256)
                
            Image("image-1")
                .resizable()
            .scaledToFit()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
 
