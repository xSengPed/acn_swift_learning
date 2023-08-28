//
//  GradientButtonStyle.swift
//  SwiftLearning
//
//  Created by Donnukrit Satirakul on 28/8/2566 BE.
//

import Foundation

import SwiftUI


struct GradientButton : ButtonStyle {
    func makeBody(configuration : Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal , 30)
            .background(
                // Conditional Statement with Nil C
                configuration.isPressed ?
                
                
                // Button is Pressed
                LinearGradient(colors: [
                    .customGreyLight,
                    .customGreyLight,
                ],
                startPoint: .top,
                endPoint: .bottom
                )
                // Button is NOT Pressed
                :
                    LinearGradient(colors: [
                    .customGreyLight,
                    .customGreyMedium,
                ],
                startPoint: .top,
                endPoint: .bottom
                )
            )
            .cornerRadius(40)
        
    }
}
