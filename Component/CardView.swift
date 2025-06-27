//
//  CardView.swift
//  Hike
//
//  https://csharpTech.net
//
//  Created by Cliff Sharp on 6/16/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        
        // MARK: - CARD
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 53))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayight, .customGrayMedium],
                                    startPoint: .top, endPoint: .bottom)
                            )
                        
                        Button() {
                            // ACTION: Show a Sheet
                            print("The button was pressed.")
                            
                        } label: {
                            Text("Button")
                        }
                    }
                    
                    Text("Fun and enjoyale outdoor activity for friends and family.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors:
                                            [Color("ColorIndigoMedium"), Color("ColorSalmonLight")],
                                           startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - FOOTER
            }
        } // CARD:
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
