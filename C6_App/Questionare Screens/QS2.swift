//
//  QS2.swift
//  C6_App
//
//  Created by Zhane Moorman-Taylor on 5/2/24.
//

import SwiftUI
struct QS2: View {
    @State private var Monday = false
    @State private var Tuesday = false
    @State private var Wednesday = false
    @State private var Thursday = false
    @State private var Friday = false
    @State private var Saturday = false
    @State private var Sunday = false
    //^^^----Functions for buttons,global variables, etc.^^^^//
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 0.25, green: 0.18, blue: 0.34)
                    .ignoresSafeArea()
                VStack{
                    Text("What days do you do go to Work/School?")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .bold()
                        .padding(.bottom, 15.0)
                    ZStack{
                        Capsule()
                            .frame(width: 350, height: 10)
                            .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.84))
                        Capsule()
                            .frame(width: 117, height:10)
                            .foregroundColor(Color(red: 0.48, green: 0.80, blue:0.37))
                    }
                    VStack {
                        Button(action: {
                            self.Monday.toggle()
                        }) {
                            Label("", systemImage: "")
                                .font(.largeTitle)
                            Text("Monday")
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .background(Monday ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(red: 0.82, green: 0.82, blue: 0.84))
                                .cornerRadius(10)
                        }
                        .padding(15)
                        Button(action: {
                            self.Tuesday.toggle()
                        }) {
                            Label("", systemImage: "")
                                .font(.largeTitle)
                            Text("Tuesday")
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .background(Tuesday ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(red: 0.82, green: 0.82, blue: 0.84))
                                .cornerRadius(10)
                        }
                        .padding(15)
                        Button(action: {
                            self.Wednesday.toggle()
                        }) {
                            Label("", systemImage: "")
                                .font(.largeTitle)
                            Text("Wednesday")
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .background(Wednesday ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(red: 0.82, green: 0.82, blue: 0.84))
                                .cornerRadius(10)
                        }
                        .padding(15)
                        Button(action: {
                            self.Thursday.toggle()
                        }) {
                            Label("", systemImage: "")
                                .font(.largeTitle)
                            Text("Thursday")
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .background(Thursday ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(red: 0.82, green: 0.82, blue: 0.84))
                                .cornerRadius(10)
                        }
                        .padding(15)
                        Button(action: {
                            self.Friday.toggle()
                        }) {
                            Label("", systemImage: "")
                                .font(.largeTitle)
                            Text("Friday")
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .background(Friday ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(red: 0.82, green: 0.82, blue: 0.84))
                                .cornerRadius(10)
                        }
                        .padding(15)
                        Button(action: {
                            self.Saturday.toggle()
                        }) {
                            Label("", systemImage: "")
                                .font(.largeTitle)
                            Text("Saturday")
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .background(Saturday ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(red: 0.82, green: 0.82, blue: 0.84))
                                .cornerRadius(10)
                        }
                        .padding(15)
                        Button(action: {
                            self.Sunday.toggle()
                        }) {
                            Label("", systemImage: "")
                                .font(.largeTitle)
                            Text("Sunday")
                                .frame(minWidth: 0, maxWidth: 300)
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .background(Sunday ? Color(red: 0.48, green: 0.80, blue: 0.37) : Color(red: 0.82, green: 0.82, blue: 0.84))
                                .cornerRadius(10)
                        }
                        .padding(15)
                    }
                    NavigationLink(destination: QS3(Monday:$Monday, Tuesday: $Tuesday, Wednesday: $Wednesday, Thursday: $Thursday, Friday: $Friday, Saturday: $Saturday, Sunday: $Sunday)
                        .navigationBarBackButtonHidden(true)){
                        
                        Image(systemName:"chevron.right")
                            .foregroundColor(Color(red: 0.48, green: 0.80, blue:0.37))
                            .bold()
                            .font(.title)
                        Text("Next")
                            .font(.title)
                            .bold()
                            .foregroundColor(Color(red: 0.48, green: 0.80, blue:0.37))
                    }
                }
            }
            }
        }
    }
    
//================================================
#Preview {
    QS2()
}
