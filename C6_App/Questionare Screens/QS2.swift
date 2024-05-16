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
    @State private var Wenesday = false
    @State private var Thursday = false
    @State private var Friday = false
    @State private var Saturday = false
    @State private var Sunday = false
    //^^^----Functions for buttons,global variables, etc.^^^^//
    var body: some View {
        NavigationView {
            VStack{
                Text("What days do you do your routine?")
                    .font(.largeTitle)
                    .bold()
                    .padding(.bottom, 15.0)
                ZStack{
                    Capsule()
                        .frame(width: 350, height: 10)
                        .foregroundColor(Color(red: 0.82, green: 0.82, blue: 0.84))
                    Capsule()
                        .frame(width: 117, height:10)
                        .foregroundColor(.green)
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
                            .background(Monday ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
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
                            .background(Tuesday ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
                            .cornerRadius(10)
                    }
                    .padding(15)
                    Button(action: {
                        self.Wenesday.toggle()
                    }) {
                        Label("", systemImage: "")
                            .font(.largeTitle)
                        Text("Wenesday")
                            .frame(minWidth: 0, maxWidth: 300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Wenesday ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
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
                            .background(Thursday ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
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
                            .background(Friday ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
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
                            .background(Saturday ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
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
                            .background(Sunday ? Color.green : Color(red: 0.82, green: 0.82, blue: 0.84))
                            .cornerRadius(10)
                    }
                    .padding(15)
                }
                NavigationLink(destination: QS3(Monday:$Monday, Tuesday: $Tuesday, Wednesday: $Wenesday, Thursday: $Thursday, Friday: $Friday, Saturday: $Saturday, Sunday: $Sunday)){
                        Image(systemName:"chevron.right")
                            .foregroundColor(.green)
                            .bold()
                            .font(.title)
                        Text("Next")
                            .font(.title)
                            .foregroundColor(Color(.green))
                    }
                }
                
            }
        }
    }
    
//================================================
#Preview {
    QS2()
}
