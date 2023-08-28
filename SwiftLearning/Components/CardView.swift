//
//  CardView.swift
//  SwiftLearning
//
//  Created by Donnukrit Satirakul on 16/8/2566 BE.
//

import SwiftUI


struct CardView: View {
    @State private var imageNumber : Int = 1
    @State private var randomNumber : Int = 1
    
    func randomImage() {
        print("Button was press")
        print("Status old image number \(imageNumber)")
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
            imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGreyLight,
                                    .customGreyMedium],
                                startPoint: .top,
                                endPoint: .bottom)
                            )
                        Spacer()
                        Button {
                            // Action : Show a sheet
                            print("Button was pressed.")
                            
                        } label: {
                            CustomButtonView()
                        }
                    }

                    Text("Fun and enjoyable outdoor activity for friends and family")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGreyMedium)
                } // Header

                .padding(.horizontal, 30)

                // MARK: - Main Content

                ZStack {
                    //
                    Circle()
                        .fill(LinearGradient(colors: [
                                Color("ColorIndigoMedium"),
                                Color("ColorSalmonLight"),
                            ],
                            startPoint: .bottomLeading,
                            endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)

                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default , value: imageNumber)
                }

                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium,
                                ],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                }
                .buttonStyle(GradientButton())
                // MARK: Footer
            } // VStack
        } // CARD
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
