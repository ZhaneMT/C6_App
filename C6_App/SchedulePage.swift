//
//  HomeScreen.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI
func printhours(){
    
}
struct SchedulePage: View {
    var body: some View {
        
        VStack{
            ZStack{
                Image("Path")
                Text("Planner")
                    .bold()
                    .font(.largeTitle)
                HStack{
                    Button(action: {
                    }) {
                        Label("", systemImage: "plus.circle.fill")
                            .padding(.leading, 380.0)
                            .foregroundColor(.green)
                            .font(.largeTitle)
                    }
                }
            }
            .padding(.trailing, 100.0)
            .frame(width: 50.0, height: 140.0)
            .ignoresSafeArea()
            Spacer()
            ScrollView{
                VStack{
                    HStack{
                        Text("8:00 AM")
                            .bold()
                            .font(.title3)
                            .italic()
                        Rectangle()
                            .frame(width: 270, height: 3)
                    }
                    HStack{
                    Text("9:00 AM")
                            .bold()
                            .font(.title3)
                            .italic()
                        Rectangle()
                            .frame(width: 270, height: 3)
                    }
                    HStack{
                    Text("10:00 AM")
                            .bold()
                            .font(.title3)
                            .italic()
                        Rectangle()
                            .frame(width: 270, height: 3)
                    }
                    HStack{
                    Text("11:00 AM")
                            .bold()
                            .font(.title3)
                            .italic()
                        Rectangle()
                            .frame(width: 270, height: 3)
                    }
                    HStack{
                    Text("12:00 AM")
                            .bold()
                            .font(.title3)
                            .italic()
                        Rectangle()
                            .frame(width: 270, height: 3)
                    }
                    HStack{
                    Text("1:00 PM")
                            .bold()
                            .font(.title3)
                            .italic()
                        Rectangle()
                            .frame(width: 270, height: 3)
                    }
                }
            }
            
        }
        
    }
    
}

    
#Preview {
    SchedulePage()
}
//--------------------------------------------------------------
#Preview {
            SchedulePage()
        }
