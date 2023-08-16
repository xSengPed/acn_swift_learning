//
//  CustomButtonView.swift
//  SwiftLearning
//
//  Created by Donnukrit Satirakul on 16/8/2566 BE.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            
            Circle()
                .fill( 
                    LinearGradient(
                        colors: [
                            .customGreenLight ,
                            .customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGreyLight ,
                            .customGreyMedium],
                        startPoint: UnitPoint.top,
                        endPoint: .bottom),
                        lineWidth: 4
                    )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(
                    colors: [
                        .customGreyLight,
                        .customGreyMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                ))
        
        }
        .frame(width: 58 , height: 58)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
