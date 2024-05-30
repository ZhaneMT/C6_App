
//  HobbyList.swift
//  C6_Draft
//
//  Created by Alexus Wilson on 4/12/24.
//

import SwiftUI

struct HobbyList: View {
    @State private var showSheet2 = false
    
    var body: some View {
        ZStack {
            Color(red: 0.25, green: 0.18, blue: 0.34)
                .ignoresSafeArea()
            VStack {
                Text("Hobby List")
                    .fontDesign(.rounded)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .bold()
                    .background(Color(red: 0.20, green: 0.15, blue: 0.27)
                        .frame(width: 450, height: 158)
                    )
                Spacer()
                ScrollView {
                    Spacer(minLength: 80)
                    VStack {}
                    ZStack {
                        RoundedRectangle(cornerRadius: 75)
                            .fill(Color.white)
                            .frame(width: 380.0, height: 330.0)
                            .shadow(radius: 10)
                            .border(Color.green, width: 10)
                            .cornerRadius(50)
                        
                        Text("Gaming")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.722, green: 0.879, blue: 0.703))
                            .padding(.bottom, 200.0)
                        
                        Text("Gaming is the interactive medium where players engage in virtual worlds, challenges, and narratives, fostering creativity, competition, and camaraderie across diverse communities.")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: 370)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                            .font(.custom("SF Compact Display", size: 19))
                        
                        Button {
                            showSheet2.toggle()
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 200.0)
                        .font(.largeTitle)
                        .tint(.orange)
                        .frame(width: 385, height: 400)
                    }
                    .sheet(isPresented: $showSheet2) {
                        PopUp(showSheet2: $showSheet2)
                            .presentationDetents([.medium])
                    }
                    Spacer(minLength: 0)
                    ZStack {
                        RoundedRectangle(cornerRadius: 75)
                            .fill(Color.white)
                            .frame(width: 380.0, height: 330.0)
                            .shadow(radius: 10)
                            .border(Color.green, width: 10)
                            .cornerRadius(50)
                        
                        Text("Exercise")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.722, green: 0.879, blue: 0.703))
                            .padding(.bottom, 200.0)
                        
                        Text("Exercise is physical activity performed to improve health, fitness, or achieve specific goals, often involving repetitive movements targeting various muscle groups.")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: 370)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                            .font(.custom("SF Compact Display", size: 19))
                        
                        Button {
                            showSheet2.toggle()
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 200.0)
                        .font(.largeTitle)
                        .tint(.orange)
                        .frame(width: 385, height: 400)
                    }
                    Spacer(minLength: 0)
                    ZStack {
                        RoundedRectangle(cornerRadius: 75)
                            .fill(Color.white)
                            .frame(width: 380.0, height: 330.0)
                            .shadow(radius: 10)
                            .border(Color.green, width: 10)
                            .cornerRadius(50)
                        
                        Text("Acting")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.722, green: 0.879, blue: 0.703))
                            .padding(.bottom, 200.0)
                        
                        Text("Acting is the immersive craft of embodying diverse characters, narratives, and emotions to transport audiences into worlds both familiar and fantastical.")
                            .fontWeight(.bold)
                            .frame(width: 370)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .font(.custom("SF Compact Display", size: 19))
                        
                        Button {
                            showSheet2.toggle()
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 200.0)
                        .font(.largeTitle)
                        .tint(.orange)
                        .frame(width: 385, height: 400)
                    }
                    Spacer(minLength: 0)
                }
            }
        }
    }
}

struct PopUp: View {
    @Binding var showSheet2: Bool
    @State private var HobbyStart = Date()
    @State private var HobbyEnd = Date()
    @State private var selectedColor: Color = .green
    @State private var SelectedHobby = ""
    
    var body: some View {
        ZStack {
            Color(red: 0.16, green: 0.11, blue: 0.21)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button("Done") {
                        showSheet2 = false
                    }
                    .foregroundColor(.orange)
                    .font(.title2)
                }
                .padding()
                
                Text("Add Hobby")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .bold()
                    .foregroundColor(.white)
                    .fontDesign(.rounded)
                    .padding(.bottom, 20)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .frame(width: 380, height: 40)
                        .opacity(0.5)
                    TextField("Title", text: $SelectedHobby)
                        .textFieldStyle(.plain)
                        .font(.title)
                        .frame(width: 350)
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text("Time:")
                        .font(.title)
                        .foregroundColor(.white)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 90, height: 40)
                            .opacity(0.5)
                        DatePicker("", selection: $HobbyStart, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                    }
                    Text("-")
                        .bold()
                        .foregroundColor(.white)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 90, height: 40)
                            .opacity(0.5)
                        DatePicker("", selection: $HobbyEnd, displayedComponents: .hourAndMinute)
                            .labelsHidden()
                    }
                }
                .padding(.bottom, 20)
                
                HStack {
                    Text("Tag Color:")
                        .font(.title)
                        .foregroundColor(.white)
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 100, height: 40)
                            .opacity(0.5)
                        Picker("Color", selection: $selectedColor) {
                            Text("Red").tag(Color.red)
                            Text("Orange").tag(Color.orange)
                            Text("Yellow").tag(Color.yellow)
                            Text("Green").tag(Color.green)
                            Text("Blue").tag(Color.blue)
                            Text("Purple").tag(Color.purple)
                        }
                        .pickerStyle(MenuPickerStyle())
                        .tint(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    HobbyList()
}
