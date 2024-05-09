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
            Text("Planner")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold()

                .background(
                    LinearGradient(colors: [.green, .teal], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width:450,height:165)
                        .opacity(0.7)
                )
            ScrollView{
                
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
