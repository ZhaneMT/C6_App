//
//  HobbyList.swift
//  C6_Draft
//
//  Created by Zhane Moorman-Taylor on 4/12/24.
//

import SwiftUI

struct HobbyList: View {
    var body: some View {
        ZStack{
            Color(red: 0.93, green: 0.99, blue: 0.73)
                .ignoresSafeArea()
            VStack(alignment:.leading){
                Text("   Activicties")
                    .font(.largeTitle)
                    .bold()
                    .underline()
                ScrollView{
                    Text("This is just to test the task bar so ok.")
                        .font(.largeTitle)
                    Text("This is just to test the task bar so ok.")
                        .font(.largeTitle)
                    Text("This is just to test the task bar so ok.")
                        .font(.largeTitle)
                    Text("This is just to test the task bar so ok.")
                        .font(.largeTitle)
                    Text("This is just to test the task bar so ok.")
                        .font(.largeTitle)
                    
                }
            }
        }
    }
}
#Preview {
    HobbyList()
}
