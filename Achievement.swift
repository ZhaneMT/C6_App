//
//  Timer.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI

struct Achievement: View {
    @State private var move = false
    @State private var swinging = false
    @State private var fillAmount: CGFloat = 0.0
    private let fillIncrement: CGFloat = 0.1
    
    var body: some View {
        ZStack {
            Color(red: 0.25, green: 0.18, blue: 0.34)
                .ignoresSafeArea()
            VStack {
                Text("Achievements")
                    .fontDesign(.rounded)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .background(Color(red: 0.20, green: 0.15, blue: 0.27)
                        .frame(width: 450, height: 158)
                    )
                HStack {
                    Spacer()
                    Circle()
                        .frame(height: 80)
                        .foregroundColor(Color(red: 0.25, green: 0.18, blue: 0.34))
                        .overlay(
                            Button(action: {
                                // action
                            }) {
                                Image(systemName: "info.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.orange)
                            }
                        )
                }
                .padding()
                ScrollView {
                    ZStack(alignment: .bottom) {
                        RoundedRectangle(cornerRadius: 27)
                            .frame(width: 197, height: 345)
                            .foregroundColor(.clear)
                        // This rectangle is the framing for filling
                        VStack{
                            ZStack {
                                RoundedRectangle(cornerRadius: 27)
                                    .frame(width: 197, height: 309 * fillAmount)
                                    .foregroundColor(Color(red: 0.48, green: 0.80, blue: 0.37))
                                Image("Wave2")
                                    .offset(y: -20)
                                    .offset(x: move ? 0 : 25)
                                    .animation(.linear(duration: 8), value: move)
                                Image("Wave1")
                                    .offset(y: -20)
                                    .offset(x: move ? 0 :25)
                                    .animation(.linear(duration: 4), value: move)
                                    .task {
                                        move.toggle()
                                        swinging.toggle()
                                    }
                                
                            }
                        }
                        Image("JarFrame1")
                    }
                    Text("Challenges:")
                        .foregroundColor(.white)
                        .bold()
                        .font(.largeTitle)
                    Button(action: {
                        if fillAmount < 1.0 {
                            fillAmount += fillIncrement
                        }
                    }) {
                        Text("Fill the Jar")
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

#Preview {
    Achievement()
}
