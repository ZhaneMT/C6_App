
//  HobbyList.swift
//  C6_Draft
//
//  Created by Alexus Wilson on 4/12/24.
//

import SwiftUI

struct HobbyList: View {
    @State private var showSheet2 = false
    @State private var showSheet3 = false
    @State private var showSheet4 = false
    
    
    var body: some View {
        ZStack{
            Color(red: 0.25, green: 0.18, blue: 0.34)
                .ignoresSafeArea()
            VStack{
                Text("Hobby List")
                    .fontDesign(.rounded)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .bold()
                    .background(Color(red: 0.20, green: 0.15, blue: 0.27)
                        .frame(width: 450, height: 158)
                                
                    )
                Spacer()
                ScrollView{
                    Spacer(minLength:80)
                    VStack{
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius:75)
                            .fill(Color.white)
                            .frame(width: 380.0, height: 330.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
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
                            .frame(width:370)
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
                        .frame(width:385 ,height:400)
                        
                    }
                    .sheet(isPresented: $showSheet2) {
                        PopUp()
                    }
                    Spacer(minLength:0)
                    ZStack {
                        RoundedRectangle(cornerRadius:75)
                            .fill(Color.white)
                            .frame(width: 380.0, height: 330.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
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
                            .frame(width:370)
                            .multilineTextAlignment(.center)
                            .lineLimit(10)
                            .font(.custom("SF Compact Display", size: 19))
                        Button {
                            
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        
                        .padding(.top, 200.0)
                        .font(.largeTitle)
                        .tint(.orange)
                        .frame(width:385 ,height:400)
                     
                    }
                    .sheet(isPresented: $showSheet3) {
                        PopUp()
                    }
                  
                    Spacer(minLength:0)
                    ZStack {
                        RoundedRectangle(cornerRadius:75)
                            .fill(Color.white)
                            .frame(width: 380.0, height: 330.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .border(Color.green, width: 10)
                            .cornerRadius(50)
                        
                        Text("Acting")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 0.722, green: 0.879, blue: 0.703))
                            .padding(.bottom, 200.0)
                        
                        Text("Acting is the immersive craft of embodying diverse characters, narratives, and emotions to transport audiences into worlds both familiar and fantastical.")
                            .fontWeight(.bold)
                            .frame(width:370)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.center)
                            .font(.custom("SF Compact Display", size: 19))
                        Button {
                            showSheet4.toggle()
                        } label: {
                            Label("", systemImage: "plus.circle.fill")
                        }
                        .padding(.top, 200.0)
                        .font(.largeTitle)
                        .tint(.orange)
                        .frame(width:385 ,height:400)
                        .sheet(isPresented: $showSheet4) {
                            PopUp()
                        }
                      
                        Spacer(minLength:0)
                        
                    }
                }
            }
            
        }
    }
    struct PopUp: View {
        @State private var HobbyStart = Date()
        @State private var HobbyEnd = Date()
        var body: some View{
            ZStack{
                Color(red: 0.25, green: 0.18, blue: 0.34)
                HStack{
                    Text("Time: ")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    DatePicker("", selection: $HobbyStart, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                    Text("-")
                    DatePicker("", selection: $HobbyEnd, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                    
                    
                }
            }
        }
    }
}
    

    

    
#Preview {
    HobbyList()
}
