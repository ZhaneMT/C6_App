//
//  Questionere.swift
//  C6_App
//
//  Created by Zhane Moorman-Taylor on 4/29/24.
//

import SwiftUI

struct QS1: View{
    @State private var newData: Bool = false
    var body: some View {
        // Variables biding and more located above ^^^^^^^^^^^^
        NavigationView{
            ZStack{
                Color(red: 0.25, green: 0.18, blue: 0.34)
                    .ignoresSafeArea()
                VStack {
                    
                    Spacer()
                    Text("Do you have Work or School?")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .bold()
                    
                    Spacer()
                    ZStack{
                        Circle()
                            .rotationEffect(.zero)
                            .foregroundColor(.white)
                            .opacity(0.05)
                            .frame(width: 350)
                        Image("DeskWork")
                            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                            .frame(height:200)
                            .padding(.leading, 40.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    NavigationLink(destination:QS2().navigationBarBackButtonHidden(true)){
                        Text("Yes ")
                            .frame(minWidth: 0, maxWidth:300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Color(red: 0.48, green: 0.80, blue:0.37))
                            .cornerRadius(10)
                            .padding(15)
                    }
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){                     Text("No")
                            .frame(minWidth: 100, maxWidth:300)
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
                            .background(Color(red: 0.48, green: 0.80, blue:0.37))
                            .cornerRadius(10)
                    }
                }
                Spacer()
            }
        }
        }
    }

//=========================================
#Preview {
    QS1()
}


