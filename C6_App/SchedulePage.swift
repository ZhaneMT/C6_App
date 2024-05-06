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
                HStack{
                Text("8:00 AM")
                        .bold()
                        .font(.title3)
                        .italic()
                    Rectangle()
                        .frame(width: 300, height: 3)
        
                }
            }
            
        }
        
    }
    
}

    
#Preview {
    SchedulePage()
}
